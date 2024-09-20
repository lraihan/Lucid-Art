import 'package:auto_size_text/auto_size_text.dart';
import 'package:dicoding_submission/screens/detail.dart';
import 'package:dicoding_submission/shared/shared_variable.dart';
import 'package:dicoding_submission/themes/color_themes.dart';
import 'package:flutter/material.dart';

class CarouselCard extends StatelessWidget {
  final Map<String, dynamic> paintingData;
  final double? scale;
  const CarouselCard({super.key, required this.paintingData, this.scale});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: orientation(context) == Orientation.portrait ? screenWidth(context) * .88 : null,
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding(context) * .5),
      child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          clipBehavior: Clip.antiAlias,
          elevation: 10,
          child: InkWell(
            splashColor: secondaryColor.shade100,
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DetailView(
                    paintingData: paintingData,
                  ),
                ),
              );
            },
            child: Padding(
              padding: orientation(context) == Orientation.portrait
                  ? EdgeInsets.only(
                      left: horizontalPadding(context) * .4,
                      right: horizontalPadding(context) * .4,
                      top: verticalPadding(context),
                      bottom: verticalPadding(context) * .2)
                  : EdgeInsets.only(
                      left: horizontalPadding(context),
                      right: horizontalPadding(context),
                      top: verticalPadding(context),
                      bottom: verticalPadding(context) * .5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText('${paintingData['artist']}\'s'),
                  AutoSizeText(
                    paintingData['title'],
                    style: Theme.of(context).textTheme.displayMedium,
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
                        scale: scale ?? 1,
                      )),
                ],
              ),
            ),
          )),
    );
  }
}
