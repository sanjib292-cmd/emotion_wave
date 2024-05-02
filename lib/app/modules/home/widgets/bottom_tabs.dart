import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomTabs extends StatelessWidget {
  const BottomTabs(
      {super.key,
      required this.icon,
      required this.title,
      this.isActive = false});
  final String title;
  final String icon;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            color: isActive ? Color(0xffFF016B) : Color(0xff3A3A3A),
            '$icon',
            width: 26, // Set your preferred width for the SvgPicture
            height: 26, // Set your preferred height for the SvgPicture
          ),
          Text(
            '$title',
            style: TextStyle(
              color: isActive ? Color(0xffFF016B) : Color(0xff3A3A3A),
              fontSize: 12,
              fontWeight: FontWeight.w400, // Set the font weight for this part
            ),
          ),
        ],
      ),
    );
  }
}
