import 'package:first_app/common/app_colors.dart';
import 'package:first_app/common/app_styles.dart';
import 'package:first_app/pages/home_page.dart';
import 'package:flutter/material.dart';

class LadingPage extends StatelessWidget {
  const LadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.primaryColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Center(
              child: Column(children: [
            Expanded(
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Well come to",
                  style: AppStyle.h3,
                ),
              ),
            ),
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "English",
                      style: AppStyle.h2.copyWith(
                          color: AppColor.titleColor,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Text(
                        "Qoutes\"",
                        style: AppStyle.h4.copyWith(height: 0.5),
                        textAlign: TextAlign.right,
                      ),
                    )
                  ]),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 64),
                child: RawMaterialButton(
                  shape: CircleBorder(),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (_) => HomePage()),
                        (route) => false);
                  },
                  child: Icon(Icons.arrow_forward_ios ),
                  fillColor: Color.fromARGB(255, 3, 140, 150),
                ),
              ),
            )
          ])),
        ));
  }
}
