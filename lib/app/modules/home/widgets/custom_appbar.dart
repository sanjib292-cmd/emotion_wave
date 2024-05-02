import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff0d0d0d),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  'assets/svg/loc.svg',
                  width: 28, // Set your preferred width for the SvgPicture
                  height: 28, // Set your preferred height for the SvgPicture
                ),
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: '목이길어슬픈기린',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight
                              .w600, // Set the font weight for this part
                        ),
                      ),
                      TextSpan(
                        text: '님의새로운',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight
                              .w400, // Set a different font weight for this part
                        ),
                      ),
                      TextSpan(
                        text: '스팟',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight
                              .w600, // Set the font weight for this part
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SvgPicture.asset(
                  'assets/svg/star.svg',
                  width: 14, // Set your preferred width for the SvgPicture
                  height: 14, // Set your preferred height for the SvgPicture
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 5.0),
                  child: Text(
                    '323,233',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight:
                          FontWeight.w500, // Set the font weight for this part
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SvgPicture.asset(
                  'assets/svg/bell.svg',
                  width: 35, // Set your preferred width for the SvgPicture
                  height: 35, // Set your preferred height for the SvgPicture
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
