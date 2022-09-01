import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/dimensions.dart';

class BigText extends StatelessWidget {
  Color color;
  final String text;
  final double size;
  TextOverflow overflow;
  BigText(
      {Key? key, this.color=const Color(0xFF332d2b),
      required this.text,
      this.size=0,
       this.overflow=TextOverflow.ellipsis}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      
      text,style: TextStyle(color: color,fontSize: size==0?Dimensions.font22:size,fontFamily: 'Roboto',fontWeight: FontWeight.w400),
      overflow: overflow,
      maxLines: 1,
    );
  }
}
