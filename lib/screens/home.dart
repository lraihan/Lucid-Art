import 'package:carousel_slider/carousel_slider.dart';
import 'package:dicoding_submission/painting_data.dart';
import 'package:dicoding_submission/shared/shared_variable.dart';
import 'package:dicoding_submission/themes/color_themes.dart';
import 'package:dicoding_submission/widgets/carousel_card.dart';
import 'package:flutter/material.dart';
import 'package:stacked_card_carousel/stacked_card_carousel.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final PageController cardController = PageController(keepPage: false);

  final CarouselSliderController horizontalController = CarouselSliderController();

  int toggleIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        if (toggleIndex == 0) ...[
          SizedBox(
            height: screenHeight(context),
            width: screenWidth(context),
            child: Row(
              children: [
                SizedBox(
                  width: screenWidth(context) * .12,
                ),
                Container(
                  padding: EdgeInsets.only(top: verticalPadding(context) * 2),
                  height: screenHeight(context),
                  width: screenWidth(context) * .88,
                  child: StackedCardCarousel(
                    pageController: cardController,
                    type: StackedCardCarouselType.fadeOutStack,
                    spaceBetweenItems: screenHeight(context) * .6,
                    initialOffset: 0,
                    items: paintings.map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Center(child: SingleChildScrollView(child: CarouselCard(paintingData: i)));
                        },
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
        ] else ...[
          SizedBox(
            height: screenHeight(context),
            width: screenWidth(context),
            child: Row(
              children: [
                SizedBox(
                  height: screenHeight(context),
                  width: screenWidth(context),
                  child: CarouselSlider(
                    carouselController: horizontalController,
                    options: CarouselOptions(
                        height: orientation(context) == Orientation.portrait
                            ? screenHeight(context) * .6
                            : screenHeight(context),
                        aspectRatio: 1 / 1,
                        autoPlay: true,
                        enlargeCenterPage: true),
                    items: paintings.map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Center(
                            child: SingleChildScrollView(
                              child: CarouselCard(
                                paintingData: i,
                                scale: orientation(context) == Orientation.portrait ? 1 : 0.8,
                              ),
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                SizedBox(
                  width: horizontalPadding(context) * .5,
                ),
                ToggleSwitch(
                  isVertical: true,
                  cornerRadius: 20.0,
                  initialLabelIndex: toggleIndex,
                  minHeight: orientation(context) == Orientation.portrait
                      ? screenHeight(context) * .3
                      : screenHeight(context) * .4,
                  minWidth: orientation(context) == Orientation.portrait
                      ? screenWidth(context) * .09
                      : screenWidth(context) * .035,
                  activeFgColor: whiteColor,
                  inactiveBgColor: whiteColor,
                  inactiveFgColor: blackColor.shade300,
                  animationDuration: 200,
                  centerText: true,
                  curve: Curves.easeInOut,
                  animate: true,
                  totalSwitches: 2,
                  labels: const [
                    'V\nE\nR\nT\nI\nC\nA\nL',
                    'H\nO\nR\nI\nZ\nO\nN\nT\nA\nL',
                  ],
                  radiusStyle: true,
                  onToggle: (index) {
                    setState(() {
                      toggleIndex = index!;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ],
    ));
  }
}
