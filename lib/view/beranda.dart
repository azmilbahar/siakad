import 'package:alfadllu/fontsyle.dart';
import 'package:alfadllu/view/subview/galeri.dart';
import 'package:alfadllu/view/subview/guru.dart';
import 'package:alfadllu/view/subview/tatatertib.dart';
import 'package:alfadllu/view/subview/tentang.dart';
import 'package:flutter/material.dart';

import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../carousels.dart';

class Beranda extends StatefulWidget {
  @override
  _BerandaState createState() => _BerandaState();
}

String namaSiswa = "", kodeKelas = "";

getPref() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  namaSiswa = preferences.getString("nama_siswa");
  kodeKelas = preferences.getString("nama_kelas");
  
}

class _BerandaState extends State<Beranda> {
  int _current = 0;
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  void initState() {
    
    super.initState();
    getPref();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: ListView(
        physics: ClampingScrollPhysics(),
        children: [
          SizedBox(height: 15,),
          Padding(
            padding: EdgeInsets.only(left: 16, bottom: 24),
            child: Text(
              "$namaSiswa, $kodeKelas",
              style: titleStyle,
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 16, right: 16),
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 190,
                  child: Swiper(
                      onIndexChanged: (index) {
                        setState(() {
                          _current = index;
                        });
                      },
                      autoplay: true,
                      layout: SwiperLayout.DEFAULT,
                      itemCount: carousels.length,
                      itemBuilder: (BuildContext context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: AssetImage(
                                  carousels[index].image,
                                ),
                                fit: BoxFit.cover),
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: map<Widget>(carousels, (index, image) {
                        return Container(
                          alignment: Alignment.centerLeft,
                          height: 6,
                          width: 6,
                          margin: EdgeInsets.only(right: 8),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _current == index
                                  ? Colors.blue
                                  : Colors.grey),
                        );
                      }),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 0, top: 24, bottom: 10),
                  child: Text(
                    "Dashboard",
                    style: titleStyle,
                  ),
                ),
                Container(
                  height: 144,
                  margin: EdgeInsets.only(left: 16, right: 16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return Tentang();
                                }));
                              },
                              child: Container(
                                margin: EdgeInsets.only(right: 8),
                                padding: EdgeInsets.only(left: 8),
                                height: 64,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                  border:
                                      Border.all(color: Colors.green, width: 1),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "assets/7717712361579605848-128.png",
                                      scale: 3,
                                      fit: BoxFit.contain,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 16,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Tentang',
                                            style: titleStyle,
                                          ),
                                          Text('Alfadllu 2'),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return TataTertib();
                                }));
                              },
                              child: Container(
                                margin: EdgeInsets.only(right: 8),
                                padding: EdgeInsets.only(left: 8),
                                height: 64,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                  border:
                                      Border.all(color: Colors.green, width: 1),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "assets/rules.png",
                                      scale: 4,
                                      fit: BoxFit.contain,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 16,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Tata Tertib',
                                            style: titleStyle,
                                          ),
                                          Text('Santri Alfadllu'),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                               onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return Galeri();
                                }));
                              },
                              child: Container(
                                margin: EdgeInsets.only(right: 8),
                                padding: EdgeInsets.only(left: 8),
                                height: 64,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                  border:
                                      Border.all(color: Colors.green, width: 1),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "assets/photo-gallery.png",
                                      scale: 14,
                                      fit: BoxFit.contain,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 16,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Galeri',
                                            style: titleStyle,
                                          ),
                                          Text('Alfadllu 2'),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(right: 8),
                              padding: EdgeInsets.only(left: 8),
                              height: 64,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                border:
                                    Border.all(color: Colors.green, width: 1),
                              ),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/teenager.png",
                                    scale: 14,
                                    fit: BoxFit.contain,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 16,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Alumni',
                                          style: titleStyle,
                                        ),
                                        Text('Santri'),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
               SizedBox(height: 16),
                Container(
                  height: 144,
                  margin: EdgeInsets.only(left: 16, right: 16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return ListGuru();
                                }));
                              },
                              child: Container(
                                margin: EdgeInsets.only(right: 8),
                                padding: EdgeInsets.only(left: 8),
                                height: 64,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                  border:
                                      Border.all(color: Colors.green, width: 1),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "assets/7717712361579605848-128.png",
                                      scale: 3,
                                      fit: BoxFit.contain,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 16,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Guru',
                                            style: titleStyle,
                                          ),
                                          Text('Alfadllu 2'),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return TataTertib();
                                }));
                              },
                              child: Container(
                                margin: EdgeInsets.only(right: 8),
                                padding: EdgeInsets.only(left: 8),
                                height: 64,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                  border:
                                      Border.all(color: Colors.green, width: 1),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "assets/rules.png",
                                      scale: 4,
                                      fit: BoxFit.contain,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 16,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Tata Tertib',
                                            style: titleStyle,
                                          ),
                                          Text('Santri Alfadllu'),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                               onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return Galeri();
                                }));
                              },
                              child: Container(
                                margin: EdgeInsets.only(right: 8),
                                padding: EdgeInsets.only(left: 8),
                                height: 64,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                  border:
                                      Border.all(color: Colors.green, width: 1),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "assets/photo-gallery.png",
                                      scale: 14,
                                      fit: BoxFit.contain,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 16,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Galeri',
                                            style: titleStyle,
                                          ),
                                          Text('Alfadllu 2'),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(right: 8),
                              padding: EdgeInsets.only(left: 8),
                              height: 64,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                border:
                                    Border.all(color: Colors.green, width: 1),
                              ),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/teenager.png",
                                    scale: 14,
                                    fit: BoxFit.contain,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 16,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Alumni',
                                          style: titleStyle,
                                        ),
                                        Text('Santri'),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            
          ),
          
        ],
      ),
    ));
  }
}
