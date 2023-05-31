import 'package:first_app/common/app_colors.dart';
import 'package:first_app/common/app_styles.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      appBar: AppBar(
        backgroundColor: AppColor.primaryColor,
        title: Center(
          child: Text("English today",
              style: AppStyle.h3.copyWith(color: AppColor.textColor)),
        ),
        leading: InkWell(
          onTap: () {},
          child: Icon(Icons.menu),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 24),
        width: double.infinity,
        child: Column(children: [
          Container(
            height: size.height * 1 / 10,
            padding: const EdgeInsets.all(16),
            alignment: Alignment.centerLeft,
            child: Text(
              "It is amaziong how to complete is the delusion that beauty is goodness.",
              style:
                  AppStyle.h5.copyWith(fontSize: 12, color: AppColor.textColor),
            ),
          ),
          Container(
            height: size.height * 2 / 3,
            child: PageView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.all(Radius.circular(16))),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(right: 10),
                          alignment: Alignment.centerRight,
                          child: Icon(Icons.heart_broken_outlined),
                        ),
                        RichText(
                            maxLines: 1,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            text: TextSpan(
                                text: "B",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 89,
                                    fontWeight: FontWeight.bold,
                                    shadows: [
                                      BoxShadow(
                                          color: Colors.black38,
                                          offset: Offset(3, 6),
                                          blurRadius: 6)
                                    ]),
                                children: [
                                  TextSpan(
                                      text: "eatiful",
                                      style: TextStyle(
                                        fontSize: 56,
                                        fontWeight: FontWeight.bold,
                                      ))
                                ])),
                        Padding(
                          padding: const EdgeInsets.only(top: 24),
                          child: Text(
                            '"Think of all the beautify still left around you and be happy"',
                            style: AppStyle.h4.copyWith(letterSpacing: 1),
                          ),
                        )
                      ]),
                );
              },
            ),
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {}, child: Icon(Icons.autorenew_rounded)),
    );
  }
}
