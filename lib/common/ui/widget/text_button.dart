
import 'package:flutter/material.dart';
import 'package:language_internationalization/common/themes/app_color.dart';
import 'package:language_internationalization/common/themes/app_style.dart';



class CustomTextButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;

  const CustomTextButton(
      {Key? key,
        required this.onPressed,
        required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Text(
          label,
          style: AppStyle.textStyle12(color: AppColor.csBlueThemeColor, fontWeight: FontWeight.bold),
        ));
  }
}
