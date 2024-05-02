import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/bottom_tabs.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 86,
      decoration: BoxDecoration(
        color: const Color(0xff0d0d0d),
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 65,
            decoration: const BoxDecoration(
              color: Color(0xff0d0d0d),
              border: Border(
                top: BorderSide(
                  color: Color(0xff595959), // Adjust color as needed
                  width: 0.2, // Adjust thickness as needed
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const BottomTabs(
                    icon: 'assets/svg/home.svg',
                    title: '홈',
                    isActive: true,
                  ),
                  const BottomTabs(
                    icon: 'assets/svg/loc_bt.svg',
                    title: '스팟',
                    isActive: false,
                  ),
                  Container(
                    height: 10,
                    width: 50,
                  ),
                  const BottomTabs(
                    icon: 'assets/svg/dm.svg',
                    title: '채팅',
                    isActive: false,
                  ),
                  const BottomTabs(
                    icon: 'assets/svg/user.svg',
                    title: 'x마이',
                    isActive: false,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width / 2 -
                25, // Adjust position as needed
            bottom: 32, // Adjust position as needed
            child: Container(
              width: 50, // Adjust width to make it circular
              height: 50, // Adjust height to make it circular
              decoration: const BoxDecoration(
                // Set the background color as needed
                shape: BoxShape.circle, // Make it circular
              ),
              child: Center(
                child: SvgPicture.asset(
                  'assets/svg/center.svg',
                  width: 200,
                  height: 200,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
