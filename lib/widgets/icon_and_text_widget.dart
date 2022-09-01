import 'package:flutter/material.dart';

import '../utils/dimensions.dart';
import 'small_text.dart';

class IconAndTextWidget extends StatelessWidget {
  final Color iconColor;
  final IconData icon;
  final String text;
  IconAndTextWidget(
      {
      required this.text,
      required this.icon,
      required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
          size: Dimensions.iconSize24,
        ),
        SizedBox(
          width: 5,
        ),
        SmallText(
          text: text,
        ),
      ],
    );
  }
}
