import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:language_internationalization/common/themes/app_color.dart';
import 'package:language_internationalization/common/ui/widget/headerWidget.dart';

const List<String> list = <String>[
  'Select language',
  'English',
  'Hindi',
  'Tamil'
];

class ChooseLanguage extends StatefulWidget {
  const ChooseLanguage({super.key});

  @override
  State<ChooseLanguage> createState() => _ChooseLanguageState();
}

class _ChooseLanguageState extends State<ChooseLanguage> {
  String dropdownValue = list.first;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColor.white,
      child: SizedBox(
        width: ScreenUtil().screenWidth,
        height: ScreenUtil().screenHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const HeaderViewWidget(title: "Choose Language"),
            SizedBox(
                height: ScreenUtil().screenHeight * 0.50,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: DropdownButton<String>(
                        value: dropdownValue,
                        icon: const Icon(Icons.arrow_downward),
                        elevation: 16,
                        style: const TextStyle(color: AppColor.greyColor6),
                        underline: Container(
                          height: 0,
                          color: AppColor.transparent,
                        ),
                        onChanged: (String? value) {
                          // This is called when the user selects an item.
                          setState(() {
                            dropdownValue = value!;
                          });
                        },
                        items:
                            list.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                    // PrimaryButtonView(
                    //     onPressed: () => Navigator.pushNamed(context, RouteList.loanApplication),
                    //     title: AppLocalizations.of(context).login,
                    //     isEnable: true),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
