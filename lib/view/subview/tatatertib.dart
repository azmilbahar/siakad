import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class TataTertib extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tata Tertib"),
      ),
      body: SfPdfViewer.asset('assets/tatatertib.pdf', enableTextSelection: true,),
    );
  }
}
