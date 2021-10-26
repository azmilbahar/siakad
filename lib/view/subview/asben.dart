import 'dart:convert';

import 'package:alfadllu/api.dart';
import 'package:alfadllu/view/beranda.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Absensi extends StatefulWidget {
  

  @override
  _AbsensiState createState() => _AbsensiState();
}

class _AbsensiState extends State<Absensi> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: AlignmentDirectional.topCenter,
              children: [
                Expanded(
                  child: Container(
                      child: Image.asset(
                    'assets/profilbg.png',
                  )),
                ),
                Container(
                  padding: EdgeInsets.only(top: 140),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 20),
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                              
                              color: Colors.blue,
                              shape: BoxShape.circle,
                              
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "$namaSiswa",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "$kodeKelas",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.lightBlue),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.all(20),
                        child: SizedBox(
                          height: 300,
                          width: 400,
                          child: Card(
                              margin: EdgeInsets.all(10),
                              color: Colors.white,
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              child: Container(
                                padding: EdgeInsets.all(20),
                                child: Column(
                                  children: [
                                    Text(
                                      "Absensi Santri",
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.green),
                                    ),
                                    Divider(
                                      height: 30,
                                      thickness: 2,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                            "Hadir : ",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            )),
                                      ],
                                    ),
                                    Divider(
                                      height: 30,
                                      thickness: 2,
                                    ),
                                    Row(
                                      children: [
                                        Text("Sakit  : ",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            )),
                                      ],
                                    ),
                                    Divider(
                                      height: 30,
                                      thickness: 2,
                                    ),
                                    Row(
                                      children: [
                                        Text("Alpha  : ",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            )),
                                      ],
                                    ),
                                    Divider(
                                      height: 30,
                                      thickness: 2,
                                    ),
                                    Row(
                                      children: [
                                        Text("Ijin  : ",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            )),
                                      ],
                                    ),
                                  ],
                                ),
                              )),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}