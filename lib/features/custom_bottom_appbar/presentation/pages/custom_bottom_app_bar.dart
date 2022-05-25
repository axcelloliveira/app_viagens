import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:viagens_app/features/custom_bottom_appbar/presentation/state_manager/custom_bottom_appbar_controller.dart';

class CustomBottomApp extends StatelessWidget {
  CustomBottomApp({Key? key}) : super(key: key);

  CustomBottomAppBarController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    return GetBuilder<CustomBottomAppBarController>(
      builder: (value) => Container(
        margin: EdgeInsets.only(
            left: displayWidth * .0,
            right: displayWidth * .0,
            bottom: displayWidth / 12),
        height: displayWidth * .145,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.1),
              blurRadius: 30,
              offset: const Offset(0, 10),
            ),
          ],
          borderRadius: BorderRadius.circular(50),
        ),
        child: ListView.builder(
          itemCount: 3,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: displayWidth * .15),
          itemBuilder: (context, index) => InkWell(
            onTap: () => controller.setIndex(index),
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Stack(
              children: [
                AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastLinearToSlowEaseIn,
                  width: index == controller.currentIndex
                      ? displayWidth * .32
                      : displayWidth * .18,
                  alignment: Alignment.center,
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    curve: Curves.fastLinearToSlowEaseIn,
                    height: index == controller.currentIndex
                        ? displayWidth * .1
                        : 0,
                    width: index == controller.currentIndex
                        ? displayWidth * .32
                        : 0,
                    decoration: BoxDecoration(
                      color: index == controller.currentIndex
                          ? Colors.yellowAccent.withOpacity(.2)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastLinearToSlowEaseIn,
                  width: index == controller.currentIndex
                      ? displayWidth * .31
                      : displayWidth * .18,
                  alignment: Alignment.center,
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            width: index == controller.currentIndex
                                ? displayWidth * .13
                                : 0,
                          ),
                          AnimatedOpacity(
                            opacity: index == controller.currentIndex ? 1 : 0,
                            duration: const Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            child: Text(
                              index == controller.currentIndex
                                  ? listOfStrings[index]
                                  : '',
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            width: index == controller.currentIndex
                                ? displayWidth * .03
                                : 20,
                          ),
                          Icon(
                            listOfIcons[index],
                            size: displayWidth * .076,
                            color: index == controller.currentIndex
                                ? Colors.yellow
                                : Colors.black26,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<IconData> listOfIcons = [
    Icons.home_rounded,
    Icons.change_circle_outlined,
    Icons.price_check_rounded,
  ];

  List<String> listOfStrings = [
    'Home',
    'Status',
    'Valores',
  ];
}
