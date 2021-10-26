import 'package:flutter/material.dart';

class Galeri extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Galeri"),
      ),
      body: Container(
        padding: EdgeInsets.all(12),

        child: Column(
          children: [
            Container(
              child: SizedBox(
                height: 200,
                width: 400,
                child: Column(
                  children: [
                    Container(
                      child: Image.network('https://drive.google.com/file/d/1SnJ0YawVe82FbYVlNPMlBCqcOcPw6GLZ/preview',fit: BoxFit.cover, )
                    ),
                    Text("Foto Galeri")
                  ],
                )

              ),
            )
          ],
        ),
      ),
      
    );
  }
}