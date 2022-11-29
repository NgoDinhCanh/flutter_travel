import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_travel/theme/colors.dart';
import 'package:flutter_travel/widgets/responsive_button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  List images = [
    'assets/images/welcome-one.png',
    'assets/images/welcome-two.png',
    'assets/images/welcome-three.png',
  ];
  List texts = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(images[index]),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Trips',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'Mountain',
                        style: TextStyle(fontSize: 30, color: Colors.black54),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: 250,
                        child: Text(
                          'Mountain hikes give you an incredible sense of freedom along with endurance tests',
                          style: TextStyle(
                              fontSize: 16, color: AppColors.textColor2),
                        ),
                      ),
                      const SizedBox(height: 30),
                      ResponsiveButton(),
                    ],
                  ),
                  Column(
                      children: List.generate(3, (indexDots) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 2),
                      width: 8,
                      height: index == indexDots ? 25 : 8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: index == indexDots
                            ? AppColors.mainColor
                            : AppColors.mainColor.withOpacity(0.5),
                      ),
                    );
                  })),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
