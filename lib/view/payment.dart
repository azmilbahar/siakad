import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Spp extends StatefulWidget {
  @override
  _SppState createState() => _SppState();
}

class _SppState extends State<Spp> {
  Widget maintenance() {
    return Container(
        child: Lottie.asset('assets/lottie/16633-maintenance-icon.json',
            width: 200, height: 200, fit: BoxFit.fill));
  }

  Widget tulisan() {
    return Text("Pembayaran Syahriah \nSedang dalam pengembangan", textAlign: TextAlign.center,
        style: TextStyle(fontFamily: 'Montserrat', fontSize: 18, fontWeight: FontWeight.w700));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.all(20),
      child: Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              maintenance(),
              Container(
                child: Column(
                  children: [],
                )
              )
          

            ],
          ),
          Container(
            child: Column(
              children: [
                tulisan(),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
