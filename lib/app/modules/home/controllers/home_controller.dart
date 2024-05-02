import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/story_item.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeController extends GetxController {
  final CarouselController carasoulCntr = CarouselController();
  final currentStory = 1.obs;
  final isStory = true.obs;
  final List<Widget> storyItems = [
    StoryItem(
      indicator: 'assets/svg/i1.svg',
      imageUrl: 'assets/png/1.png',
      widget: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: const Text(
              '''서울 · 2km 거리에 있음''',
              maxLines: 3,
              // textDirection: TextDirection.ltr,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: SvgPicture.asset(
              'assets/svg/love.svg',
              width: 48, // Set your preferred width for the SvgPicture
              height: 48, // Set your preferred height for the SvgPicture
            ),
          ),
        ],
      ),
    ),
    StoryItem(
      indicator: 'assets/svg/i2.svg',
      imageUrl: 'assets/png/2.png',
      widget: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: const Text(
              '''서로 아껴주고 힘이 되어줄 사람 찾아요
선릉으로 직장 다니고 있고 여행 좋아해요
이상한 이야기하시는 분 바로 차단입니다''',
              maxLines: 3,
              textDirection: TextDirection.ltr,
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: SvgPicture.asset(
              'assets/svg/love.svg',
              width: 48, // Set your preferred width for the SvgPicture
              height: 48, // Set your preferred height for the SvgPicture
            ),
          ),
        ],
      ),
    ),
    StoryItem(
      indicator: 'assets/svg/i3.svg',
      imageUrl: 'assets/png/3.png',
      widget: Padding(
        padding: const EdgeInsets.only(top: 2.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 170,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffFF016B)),
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xffFF016B).withOpacity(0.2)),
                    child: Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/png/p.png',
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 5.0),
                            child: Text(
                              '진지한 연애를 찾는 중',
                              style: TextStyle(
                                  color: Color(0xffFF016B),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: Row(
                      children: [
                        Container(
                          // width: 130,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.black),
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/png/11.png',
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 5.0),
                                  child: Text(
                                    '전혀 안 함',
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
                        SizedBox(
                          width: 2,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.black),
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/png/22.png',
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 5.0),
                                  child: Text(
                                    '비흡연',
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
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.black),
                      child: Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/png/33.png',
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 5.0),
                              child: Text(
                                '매일 1시간 이상',
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
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2.0),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.black),
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/png/44.png',
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 5.0),
                                  child: Text(
                                    '만나는 걸 좋아함',
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
                        const SizedBox(
                          width: 2,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.black),
                          child: const Padding(
                            padding: EdgeInsets.all(7.0),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 5.0),
                                  child: Text(
                                    'INFP',
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: SvgPicture.asset(
                'assets/svg/love.svg',
                width: 48, // Set your preferred width for the SvgPicture
                height: 48, // Set your preferred height for the SvgPicture
              ),
            ),
          ],
        ),
      ),
    ),
  ];

  void onNextStory() {
    if (currentStory.value == storyItems.length - 1) {
      currentStory.value = -1;
    } else {
      currentStory.value += 1;
    }
    print(currentStory.value);
  }
}
