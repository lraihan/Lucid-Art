import 'package:auto_size_text/auto_size_text.dart';
import 'package:dicoding_submission/shared/shared_variable.dart';
import 'package:dicoding_submission/themes/color_themes.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ActionButton extends StatelessWidget {
  final String label;
  final Function onPressed;
  final bool? enabled;
  final Color color;
  double? height;
  double? width;

  ActionButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.height,
    this.width,
    required this.color,
    this.enabled,
  });

  @override
  Widget build(BuildContext context) {
    height ??= screenHeight(context) * .055;
    width ??= screenWidth(context) * .5;
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: enabled ?? true ? color : whiteColor.shade700,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      child: TextButton(
        style: ButtonStyle(
            fixedSize: WidgetStateProperty.resolveWith((states) => Size(width!, height!)),
            backgroundColor: enabled ?? true
                ? WidgetStateColor.resolveWith((states) => color)
                : WidgetStateColor.resolveWith((states) => whiteColor.shade700)),
        onPressed: (enabled ?? true)
            ? () {
                onPressed();
              }
            : null,
        child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: screenWidth(context) * 0.01, vertical: screenHeight(context) * 0.008),
            child: AutoSizeText(
              label,
              style: Theme.of(context).textTheme.labelMedium!.copyWith(color: whiteColor.shade300),
              maxLines: 1,
            )),
      ),
    );
  }
}
