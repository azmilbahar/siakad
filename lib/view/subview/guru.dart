import 'dart:convert';

import 'package:alfadllu/api.dart';
import 'package:alfadllu/getguru.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ListGuru extends StatefulWidget {
  @override
  _ListGuruState createState() => _ListGuruState();
}

class _ListGuruState extends State<ListGuru> {
  List data = List();

  getListGuru() async {
    data.clear();
    var response = await http.get(BaseUrl.getGuru);
    if (response.statusCode == 200) {
      setState(() {
        data = jsonDecode(response.body);
      });
      print(data);
      return data;
    }
  }

  @override
  void initState() {
    super.initState();
    getListGuru();
  }
  var foto = http.get("https://portal.alfadllu.ponpes.id/foto_pegawai/");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Guru"),
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index){
        return ListTile(
          leading: CircleAvatar(backgroundImage: NetworkImage(data[index]['foto']),),
          title: Text(data [index]['nama_guru']),
          subtitle: Text(data [index]['kecamatan']),
        );
      }
    ));
      
  }
}

