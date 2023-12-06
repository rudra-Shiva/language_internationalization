import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:language_internationalization/common/ui/widget/text_button.dart';

import '../../themes/app_color.dart';
import '../../themes/app_style.dart';
import '../res/dimen.dart';

class HeaderViewWidget extends StatelessWidget {
  final String? title;
  final String? suffixTitle;
  final VoidCallback? onSuffixPressed;
  final VoidCallback? onBackPress;

  const HeaderViewWidget({
    Key? key,
    required this.title,
    this.onSuffixPressed,
    this.suffixTitle,
    this.onBackPress
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: ScreenUtil().screenWidth,
        height: Dimen.dimen_60.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                IconButton(
                  alignment: Alignment.center,
                  iconSize: Dimen.dimen_20,
                  icon: const Icon(
                    Icons.arrow_back_ios,
                  ),
                  onPressed: () {
                    if(onBackPress==null) {
                      Navigator.pop(context);
                    }else{
                      onBackPress!();
                    }
                  },
                ),
                Text(title!,
                    style: AppStyle.textStyleMedium16(
                        color: AppColor.greyColor7,
                        fontWeight: FontWeight.w500)),
              ],
            ),
            (suffixTitle != null && onSuffixPressed != null)
                ? CustomTextButton(onPressed: onSuffixPressed!, label: suffixTitle!)
                : Container()
          ],
        ));
  }
}
