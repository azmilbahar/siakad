import 'package:alfadllu/fontsyle.dart';
import 'package:flutter/material.dart';

class Tentang extends StatefulWidget {
  @override
  _TentangState createState() => _TentangState();
}

bool _pinned = true;

class _TentangState extends State<Tentang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: _pinned,
            expandedHeight: 160,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "Pondok Pesantren \nAlfadlu 2",
                style: titleStyle,
                textAlign: TextAlign.center,
              ),
              background: Image.asset(
                "assets/3ALFadlu 2.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
              child: Center(
                child: Text('Scroll to see the SliverAppBar in effect.'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
