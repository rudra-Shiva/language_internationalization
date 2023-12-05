import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Center(
        child: Text(
          "Error In Screen!! Please go back",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
