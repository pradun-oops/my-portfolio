import 'package:flutter/material.dart';
import 'package:porfolio/constants/styles.dart';
import 'package:porfolio/screens/widgets/count_container_widget.dart';
import 'package:porfolio/screens/widgets/header_text_widget.dart';
import 'package:porfolio/screens/widgets/rotating_image_widget.dart';

class DesktopLayout extends StatefulWidget {
  const DesktopLayout({super.key});

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: Styles.gradientDecoration,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: size.height * 0.18),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        HeaderTextWidget(
                          size: size,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Social_large(size: size),
                      ],
                    ),

                    // ignore: avoid_unnecessary_containers
                    Expanded(
                        // ignore: avoid_unnecessary_containers
                        child: Container(
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [RotatingImageContainer()],
                      ),
                    ))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CountWidget(
                      size: size,
                      text1: "7-8",
                      text2: "Months of",
                      text3: "Experience",
                    ),
                    CountWidget(
                      size: size,
                      text1: "7+",
                      text2: "Projects",
                      text3: "Completed",
                    ),
                    CountWidget(
                      size: size,
                      text1: "1.3k",
                      text2: "Awesome",
                      text3: "Reviews",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
