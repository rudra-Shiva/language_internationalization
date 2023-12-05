import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:language_internationalization/common/themes/app_color.dart';

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
          color: AppColor.white,
           child: const Center(
            child: Text("Welcome"),
      ),
    ));
  }
}
