import 'package:flutter/material.dart';

class Mycontainer extends StatelessWidget {
  String Mytext;
  //double Myheight;
  //double Mywidth;
  Mycontainer(this.Mytext) {}
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Text(Mytext),
    );
  }
}
