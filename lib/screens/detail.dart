import 'package:auto_size_text/auto_size_text.dart';
import 'package:dicoding_submission/shared/shared_variable.dart';
import 'package:dicoding_submission/themes/color_themes.dart';
import 'package:flutter/material.dart';

class DetailView extends StatelessWidget {
  final Map paintingData;
  const DetailView({super.key, required this.paintingData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: Stack(
        children: [
          SizedBox(
            height: screenHeight(context),
            width: screenWidth(context),
            child: Opacity(
              opacity: 0.5,
              child: Image.asset(
                paintingData['image'],
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: screenHeight(context),
            width: screenWidth(context),
            padding: EdgeInsets.symmetric(
              vertical: verticalPadding(context),
              horizontal: horizontalPadding(context),
            ),
            child: Center(
              child: SingleChildScrollView(
                child: orientation(context) == Orientation.portrait
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            '${paintingData['artist']}\'s',
                            style: Theme.of(context).textTheme.titleLarge!.copyWith(color: whiteColor),
                          ),
                          AutoSizeText(
                            paintingData['title'],
                            style: Theme.of(context).textTheme.displayLarge!.copyWith(color: whiteColor),
                          ),
                          SizedBox(
                            height: screenHeight(context) * .01,
                          ),
                          Container(
                            clipBehavior: Clip.antiAlias,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(22),
                              ),
                            ),
                            child: Image.asset(
                              paintingData['image'],
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            height: screenHeight(context) * .05,
                          ),
                          AutoSizeText(
                            paintingData['description'],
                            style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: whiteColor),
                          )
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            clipBehavior: Clip.antiAlias,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(22),
                              ),
                            ),
                            child: Image.asset(
                              paintingData['image'],
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: screenWidth(context) * .02,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AutoSizeText(
                                '${paintingData['artist']}\'s',
                                style: Theme.of(context).textTheme.titleLarge!.copyWith(color: whiteColor),
                              ),
                              AutoSizeText(
                                paintingData['title'],
                                style: Theme.of(context).textTheme.displayLarge!.copyWith(color: whiteColor),
                              ),
                              SizedBox(
                                width: screenWidth(context) * .4,
                                child: AutoSizeText(
                                  paintingData['description'],
                                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: whiteColor),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
