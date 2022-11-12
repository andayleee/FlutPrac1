import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prac2/presentation/widgets/custom_buttons.dart';

class client_page extends StatefulWidget {
  const client_page({Key? key}) : super(key: key);

  @override
  State<client_page> createState() => _client_pageState();
}

class _client_pageState extends State<client_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
                child: Column(
      children: [
        Text(
          "Клиент",
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