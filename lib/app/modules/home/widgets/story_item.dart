import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class StoryItem extends StatelessWidget {
  final String imageUrl;
  final String text;
  final Widget widget;
  final String indicator;

  const StoryItem(
      {required this.imageUrl,
      this.text = "fcfugvugc",
      required this.widget,
      required this.indicator});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());

    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              imageUrl,
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        Positioned(
            top: 10,
            left: 8,
            right: 8,
            child: Container(
              child: SvgPicture.asset(
                '$indicator',
                // width: 18,
                // height: 18,
              ),
            )),
        Positioned(
            top: 0,
            right: 0,
            child: Container(
              width: 120,
              child: GestureDetector(
                  onTap: () {
                    controller.carasoulCntr.nextPage();
                    controller.onNextStory();
                    print('hello');
                  },
                  child: Container(
                    color: Colors.transparent,
                    height: Get.height / 1.5,
                    width: 120,
                  )),
            )),
        Positioned(
          top: 0,
          left: 0,
          child: Container(
            width: 120,
            child: GestureDetector(
                onTap: () {
                  controller.carasoulCntr.previousPage();
                },
                child: Container(
                  color: Colors.transparent,
                  height: Get.height / 1.5,
                  width: 120,
                )),
          ),
        ),
        Positioned(
          bottom: 70,
          left: 10,
          right: 0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 90,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.black),
                child: Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/svg/str.svg',
                        width: 18,
                        height: 18,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 5.0),
                        child: Text(
                          '29,930',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '잭과분홍콩나물',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.0),
                    child: Text(
                      '25',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              widget
            ],
          ),
        ),
      ],
    );
  }
}
