import 'package:first_app/common/app_colors.dart';
import 'package:first_app/common/app_styles.dart';
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
              child: Row(children: [
                Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 17),
                      child: Container(
                        alignment: Alignment.topCenter,
                        child: Text("Engligh", style: AppStyle.h2),
                      ),
                    )),
                Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 84),
                      child: Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Qoutes\"",
                            style: AppStyle.h4,
                          )),
                    ))
              ]),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 18),
                child: Container(
                  alignment: Alignment.topCenter,
                  child: SizedBox(
                    width: 76,
                    height: 76,
                    child: ElevatedButton(
                      child: Icon(
                        AppColor.navigate_next,
                        size: 35,
                        color: Color.fromARGB(255, 66, 66, 66),
                      ),
                      onPressed: () {
                        print("xin chao");
                      },
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(64)))),
                    ),
                  ),
                ),
              ),
            )
          ])),
        ));
  }
}
