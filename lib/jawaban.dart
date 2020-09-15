import 'package:flutter/material.dart';

class Jawaban extends StatelessWidget {
  
  final Function pointer;
  final String teksJawaban;

  Jawaban(this.pointer,this.teksJawaban);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text(teksJawaban),
              onPressed: pointer,
            ),
    );
  }
}