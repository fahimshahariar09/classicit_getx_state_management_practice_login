import 'package:flutter/material.dart';
import 'package:state_management_practice/view/common_widget/common_text.dart';

class CommonButton extends StatelessWidget {
  const CommonButton(
      {super.key,
      required this.buttonName,
      this.buttonColor,
      this.textColor,
      this.buttonWidth,
      this.buttonHeight,
      required this.onTap});

  final String buttonName;
  final double? buttonWidth;
  final double? buttonHeight;
  final Color? buttonColor;
  final Color? textColor;
  final VoidCallback onTap;

  @override Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        color: buttonColor ?? Colors.deepOrange,
        child: SizedBox(
          height: buttonHeight ?? 50,
          width: buttonWidth ?? MediaQuery.sizeOf(context).width,
          child: Center(
            child: CommonText(
              titel: buttonName,
              fColor: textColor ?? Colors.white,
              fSize: 18,

            ),
          ),
        ),
      ),
    );
  }
}
