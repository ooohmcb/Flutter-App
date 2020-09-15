import 'package:flutter/material.dart';

import './jawaban.dart';
import './pertanyaan.dart';

void main() {
  runApp(AppGue());
}

class AppGue extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AppGueState();
  }
}

class _AppGueState extends State<AppGue>{

  static const pertanyaan = [
      {
        'teksPertanyaan':'suka keramaian ga?',
        'teksJawaban':['suka','tidak suka'],
      },
      {
        'teksPertanyaan':'imajinatif atau praktikal?',
        'teksJawaban':['imajinatif','praktikal'],
      },
      {
        'teksPertanyaan':'logika atau perasaan?',
        'teksJawaban':['logika','perasaan'],
      },
      {
        'teksPertanyaan':'berantakan atau rapih?',
        'teksJawaban':['berantakan','rapih'],
      },
    ];

  int _jawaban = 0;

  void _ngejawab() {
    setState(() {
      _jawaban = _jawaban + 1;
    });
    print(_jawaban);
    if(_jawaban < pertanyaan.length){
      print('Masih ada pertanyaan lagi.');
    }else{
      print('Pertanyaan habis.');
    }
  }

  @override
  Widget build(BuildContext konteks) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('App Pertama Gue'),
        ),
        body: _jawaban < pertanyaan.length ?
        Column(
          children: [
            Pertanyaan(pertanyaan[_jawaban]['teksPertanyaan']), 
            ...(pertanyaan[_jawaban]['teksJawaban'] as List<String>).map((jawaban) {
              return Jawaban(_ngejawab, jawaban);
            }).toList()
          ],
        ) : Center(child: Text('Selamat!')),
      ),
    );
  }
}
