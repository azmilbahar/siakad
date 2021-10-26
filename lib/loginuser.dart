import 'dart:convert';

import 'package:alfadllu/api.dart';



import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'menu.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginUser extends StatefulWidget {
  @override
  _LoginUserState createState() => _LoginUserState();
}

class Api {
  static const routeName = "/beranda";
}

enum LoginStatus { notSignIn, signIn }

class _LoginUserState extends State<LoginUser> {
  LoginStatus _loginStatus = LoginStatus.notSignIn;
  String nis, password;

  final _key = new GlobalKey<FormState>();
  bool _secureText = true;

  showHide() {
    setState(() {
      _secureText = !_secureText;
    });
  }

  check() {
    final form = _key.currentState;
    if (form.validate()) {
      form.save();
      print("$nis,$password");
      login();
    }
  }

// INI API

  login() async {
    final response = await http.post(BaseUrl.login, body: {
      "nis": nis,
      "password": password,
    });
    final data = jsonDecode(response.body);
    // AMBIL DATA DARI API
    int value = data['value'];
    String pesan = data['message'];
    String namaSiswa = data['nama_siswa'];
    String kodeKelas = data['nama_kelas'];
    String foto = data ['foto'];
    String tinggiBadan = data ['tinggi_badan'];
    String beratBadan = data ['berat_badan'];
    String statusVaksin = data ['status_vaksin'];
    String statusKesehatan = data ['status_kesehatan'];
    String uangSaku = data ['uang_saku'];
    
   
    

    if (value == 1) {
      setState(() {
        _loginStatus = LoginStatus.signIn;
        savePref(value, namaSiswa, kodeKelas,foto);
      });

      print(pesan);
    } else {
      print(data);
      return data;
    }

    print(data);
  }

  savePref(
    int value,
    String namaSiswa,
    String kodeKelas,
    String foto,
    
  ) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      preferences.setInt("value", value);
      preferences.setString("nama_siswa", namaSiswa);
      preferences.setString("nama_kelas", kodeKelas);
      preferences.setString("foto", foto);
      
      preferences.commit();
    });
  }

  var value;

  getPref() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      value = preferences.getInt("value");
      _loginStatus = value == 1 ? LoginStatus.signIn : LoginStatus.notSignIn;
    });
  }

  signOut() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setInt("value", null);
    preferences.commit();
    _loginStatus = LoginStatus.notSignIn;
  }

  @override
  void initState() {
    super.initState();
    getPref();
  }

  @override
  Widget build(BuildContext context) {
    switch (_loginStatus) {
      case LoginStatus.notSignIn:
        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Scaffold(
            appBar: AppBar(),
            body: Form(
              key: _key,
              child: ListView(
                padding: EdgeInsets.all(20),
                children: [
                  TextFormField(
                    validator: (e) {
                      if (e.isEmpty) {
                        return "Masukan NIS";
                      }
                      return null;
                    },
                    onSaved: (e) => nis = e,
                    decoration: InputDecoration(labelText: "NIS"),
                  ),
                  TextFormField(
                    obscureText: _secureText,
                    onSaved: (e) => password = e,
                    decoration: InputDecoration(
                        labelText: "password",
                        suffixIcon: IconButton(
                          onPressed: showHide,
                          icon: Icon(_secureText
                              ? Icons.visibility_off
                              : Icons.visibility),
                        )),
                  ),
                  MaterialButton(
                      onPressed: () {
                        check();
                      },
                      child: Text("Login")),
                ],
              ),
            ),
          ),
        );

        break;
      case LoginStatus.signIn:
        return Menu(signOut);
    }
  }
}
