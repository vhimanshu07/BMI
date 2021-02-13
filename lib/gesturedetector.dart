import 'package:flutter/material.dart';
import 'constants.dart';

class bottombutton extends StatelessWidget {
  final Function onTap;
  final String buttontitle;
  bottombutton({this.onTap,this.buttontitle});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(

        child: Center(child: Text(buttontitle,style: klarge,)),
        color: kbottomcolor,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10.0),
        height: kbottomheight,
      ),
    );
  }
}
