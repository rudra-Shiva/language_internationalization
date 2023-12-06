import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:language_internationalization/common/navigation/routesList.dart';
import 'package:language_internationalization/common/themes/app_color.dart';
import 'package:language_internationalization/common/themes/app_style.dart';
import 'package:language_internationalization/common/ui/res/dimen.dart';
import 'package:language_internationalization/common/ui/widget/headerWidget.dart';
import 'package:language_internationalization/common/ui/widget/text_button.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({super.key});

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
          width: ScreenUtil().screenHeight,
          height: ScreenUtil().scaleWidth,
          color: AppColor.white,
           child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
                const HeaderViewWidget(title: "Main Page"),
                 Center(
                  child: Card(
                    color: AppColor.greyColor2,
                    child: SizedBox(
                      width: Dimen.dimen_300,
                      height: Dimen.dimen_100,
                      child: Center(child: Text('Language Internationalization App',style: AppStyle.textStyle12(),)),
                    ),
                  ),
                ),
                CustomTextButton(onPressed: (){
                  Navigator.pushNamed(context, RouteList.chooseLanguage);
                }, label: "Next")
             ],
      ),
    ));
  }
}
