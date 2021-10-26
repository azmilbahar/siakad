import 'package:alfadllu/view/beranda.dart';
import 'package:alfadllu/view/subview/asben.dart';
import 'package:alfadllu/view/subview/kesehatan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Navigasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Stack(
                  children: [
                    Expanded(
                      child: Container(
                        child: Image.asset(
                          "assets/profilbg.png",
                          alignment: Alignment.topCenter,
                          color: Colors.teal,
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "$namaSiswa \n$kodeKelas",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.start,
                          ),
                          Image.asset(
                            "assets/biodataicon.png",
                            width: 50,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(18),
                      child: Container(
                        child: Text(
                          "Menu Santri",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(12),
                      child: Center(
                        child: Wrap(
                          spacing: 20,
                          runSpacing: 20,
                          children: [
                            SizedBox(
                              width: 160,
                              height: 160,
                              child: Card(
                                color: Colors.white,
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: EdgeInsets.all(8),
                                    child: InkWell(
                                      onTap: () {
                                        print(context);
                                      },
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            "assets/jadwal.png",
                                            width: 60,
                                            color: Colors.green,
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text("Jadwal",
                                              style: TextStyle(
                                                  color: Colors.green,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20)),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "Pelajaran",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 160,
                              height: 160,
                              child: Card(
                                color: Colors.white,
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: EdgeInsets.all(8),
                                    child: InkWell(
                                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return Absensi();
                                }));},
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            "assets/absensiicon.png",
                                            width: 60,
                                            color: Colors.green,
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text("Absensi",
                                              style: TextStyle(
                                                  color: Colors.green,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20)),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "Sekolah",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 160,
                              height: 160,
                              child: Card(
                                color: Colors.white,
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: EdgeInsets.all(8),
                                    child: InkWell(
                                      onTap: (){},
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            "assets/prestasiicon.png",
                                            width: 70,
                                            color: Colors.green,
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text("Prestasi",
                                              style: TextStyle(
                                                  color: Colors.green,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20)),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "Santri",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 160,
                              height: 160,
                              child: Card(
                                color: Colors.white,
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: EdgeInsets.all(8),
                                    child: InkWell(
                                      onTap: (){},
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            "assets/nilaiicon.png",
                                            width: 70,
                                            color: Colors.green,
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text("Nilai",
                                              style: TextStyle(
                                                  color: Colors.green,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20)),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "Santri",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 160,
                              height: 160,
                              child: Card(
                                color: Colors.white,
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: EdgeInsets.all(8),
                                    child: InkWell(
                                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return Kesehatan();
                                }));},
                                      child: Column(
                                        children: [
                                          Image.asset("assets/kesehatanicon.png",
                                              width: 70, color: Colors.green),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text("Kesehatan",
                                              style: TextStyle(
                                                  color: Colors.green,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20)),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "Santri",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 160,
                              height: 160,
                              child: Card(
                                color: Colors.white,
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: EdgeInsets.all(8),
                                    child: InkWell(
                                      onTap: (){},
                                      child: Column(
                                        children: [
                                          Image.asset("assets/pengumuman.png",
                                              width: 70, color: Colors.green),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text("Pengumuman",
                                              style: TextStyle(
                                                  color: Colors.green,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20)),
                                          SizedBox(
                                            height: 5,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
