import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prac2/presentation/widgets/custom_buttons.dart';

class admin_page extends StatefulWidget {
  const admin_page({Key? key}) : super(key: key);

  @override
  State<admin_page> createState() => _admin_pageState();
}

class _admin_pageState extends State<admin_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
                child: Column(
      children: [
        Text(
          "Администратор",
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        CustomButton(
          content: 'Назад',
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    ))));
  }
}