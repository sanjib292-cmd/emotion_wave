import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/custom_bottom_nav.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());

    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60), // Set your preferred height here
          child: CustomAppBar(),
        ),
        bottomNavigationBar: const CustomBottomNavBar(),
        body: Container(
          color: const Color(0xff0d0d0d),
          child: Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 0.0),
                child: Obx(() => controller.currentStory.value == -1
                    ? Container(
                        color: const Color(0xff0d0d0d),
                        child: Center(
                          child: GestureDetector(
                            onTap: () {
                              controller.currentStory.value = 1;
                            },
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '추천 드릴 친구들을 준비 중이에요',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 4.0),
                                  child: Text(
                                    '매일 새로운 친구들을 소개시켜드려요',
                                    style: TextStyle(
                                      color: Color(0xffADADAD),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    : CarouselSlider(
                        carouselController: controller.carasoulCntr,
                        items: controller.storyItems,
                        options: CarouselOptions(
                          enableInfiniteScroll: true,
                          initialPage: 1,
                          aspectRatio: 9 / 3,
                          viewportFraction: 0.88,
                          height: Get.height * 0.85,
                          onPageChanged: (index, reason) {
                            print(reason);
                            // controller.currentStory.value = index;
                            print(index);
                            index == 3
                                ? controller.currentStory.value = -1
                                : controller.currentStory.value = index;
                            ;
                          },
                        )))),
          ),
        ),
      ),
    );
  }
}

class StoryIndicator extends StatelessWidget {
  final bool isActive;

  const StoryIndicator({required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isActive ? 12.0 : 8.0,
      height: 8.0,
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? Colors.blue : Colors.grey,
      ),
    );
  }
}
