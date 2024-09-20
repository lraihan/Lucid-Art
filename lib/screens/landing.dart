import 'package:auto_size_text/auto_size_text.dart';
import 'package:dicoding_submission/screens/home.dart';
import 'package:dicoding_submission/shared/shared_variable.dart';
import 'package:dicoding_submission/themes/color_themes.dart';
import 'package:dicoding_submission/widgets/action_button.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: screenWidth(context),
        height: screenHeight(context),
        padding: EdgeInsets.symmetric(
          vertical: verticalPadding(context),
          horizontal: orientation(context) == Orientation.portrait
              ? horizontalPadding(context)
              : horizontalPadding(context) * 21,
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment:
                  orientation(context) == Orientation.portrait ? CrossAxisAlignment.center : CrossAxisAlignment.start,
              children: [
                if (orientation(context) == Orientation.portrait) ...[
                  Container(
                    height: screenHeight(context) * .45,
                    width: screenWidth(context) - horizontalPadding(context) * 4,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(1000),
                        topRight: Radius.circular(1000),
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                    child: Image.asset(
                      'assets/images/Mona_Lisa_By_Leonardo_Da_Vinci_large.webp',
                      fit: BoxFit.cover,
                    ),
                  ),
                ] else ...[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: screenHeight(context) * .45,
                        width: screenWidth(context) * .18,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(1000),
                            topRight: Radius.circular(1000),
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50),
                          ),
                        ),
                        child: Image.asset(
                          'assets/images/American_Gothic_by_Grant_Wood_large.webp',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        height: screenHeight(context) * .45,
                        width: screenWidth(context) * .18,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(1000),
                            topRight: Radius.circular(1000),
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50),
                          ),
                        ),
                        child: Image.asset(
                          'assets/images/Mona_Lisa_By_Leonardo_Da_Vinci_large.webp',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        height: screenHeight(context) * .45,
                        width: screenWidth(context) * .18,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(1000),
                            topRight: Radius.circular(1000),
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50),
                          ),
                        ),
                        child: Image.asset(
                          'assets/images/The_Starry_Night_By_Vincent_Van_Gogh_5fea445a-de35-4ebc-b749-408bf21bac34_large.webp',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ],
                SizedBox(
                  height: verticalPadding(context),
                ),
                AutoSizeText.rich(
                  TextSpan(
                      text: 'Step into the World of Timeless ',
                      style: Theme.of(context).textTheme.displayMedium,
                      children: [
                        TextSpan(
                          text: 'Masterpieces.',
                          style: Theme.of(context).textTheme.displayMedium!.copyWith(color: secondaryColor),
                        ),
                      ]),
                ),
                SizedBox(
                  height: screenHeight(context) * .01,
                ),
                const AutoSizeText(
                  'Immerse yourself in the beauty of history’s greatest works, all in one place.',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: verticalPadding(context),
                ),
                ActionButton(
                  label: 'Explore Masterpieces',
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Home()));
                  },
                  color: primaryColor.shade700,
                  width: double.maxFinite,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
