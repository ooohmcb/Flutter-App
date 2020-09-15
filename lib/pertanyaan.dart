import 'package:flutter/material.dart';

class Pertanyaan extends StatelessWidget {
  final String pertanyaanTeks;

  Pertanyaan(this.pertanyaanTeks);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Text(
          pertanyaanTeks,
          style: TextStyle(fontSize: 30),
          textAlign: TextAlign.center,
        )
    );
  }
}
