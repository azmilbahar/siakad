import 'package:alfadllu/loginuser.dart';
import 'package:alfadllu/view/beranda.dart';
import 'package:alfadllu/view/navigasi.dart';
import 'package:alfadllu/view/payment.dart';
import 'package:alfadllu/view/profil.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Menu extends StatefulWidget {
final VoidCallback signOut;
Menu(this.signOut);
  

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
 

  String namaSiswa = "", kodeKelas = "", statusSiswa = "";
  TabController tabController;



  getPref() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    namaSiswa = preferences.getString("nama");
    kodeKelas = preferences.getString("kode_kelas");
    statusSiswa = preferences.getString("status_siswa");
    
  }

  @override
  void initState() {
    super.initState();
    getPref();
  }

  

  GlobalKey<CurvedNavigationBarState> _navKey = GlobalKey();
  var pageAll = [
    Beranda(),
    Navigasi(),
    Spp(),
    Profil(),
    
  ];

  var myIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _navKey,
        height: 50,
        color: Colors.green,
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: Colors.blue,
        items: <Widget>[
          Icon(Icons.home, size: 30, color: Colors.white),
          Icon(Icons.apps, size: 30, color: Colors.white),
          Icon(Icons.payments_outlined, size: 30, color: Colors.white),
          Icon(Icons.perm_identity, size: 30, color: Colors.white),
          
        ],
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        animationCurve: Curves.fastLinearToSlowEaseIn,
      ),
      body: pageAll[myIndex],
    );
  }

  
}
