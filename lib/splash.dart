
import 'package:flutter/material.dart';

import 'loginuser.dart';


class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    _checkUSer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container( 
            height:  200,
            width:  200,
            child: Image.asset('assets/smp.png')
            ,
          ),
          
          SizedBox(
            height: 30.00,
          ),
          
        ],
      ),
     ) );
  }

  void _checkUSer() async {
    await Future.delayed(Duration(seconds: 5));

    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginUser()));
  }
}
