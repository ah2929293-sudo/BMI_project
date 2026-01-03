import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/custom_app_bar.dart';
import 'package:flutter_application_1/Widgets/gander_container.dart';
import 'package:flutter_application_1/Widgets/info_container.dart';
import 'package:flutter_application_1/screens/result_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isMale = false;
  bool isFeMale = false;
  int height = 50;
  int weight = 30;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 26, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //gander row
              Row(
                children: [
                  GanderContainer(
                    title: "male",
                    icon: Icons.male,
                    color: isMale ? Colors.red : Color(0xff24263B),
                    onTap: () {
                      setState(() {
                        isMale = true;
                        isFeMale = false;
                      });
                    },
                  ),
                  SizedBox(width: 9),
                  GanderContainer(
                    title: "female",
                    icon: Icons.female,
                    color: isFeMale ? Colors.red : Color(0xff333244),
                    onTap: () {
                      setState(() {
                        isMale = false;
                        isFeMale = true;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 25),
              Container(
                width: double.infinity,
                height: 189,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xff333244),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Height",
                      style: TextStyle(
                        color: Color(0xff8B8C9E),
                        fontWeight: FontWeight.w300,
                        fontSize: 20,
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: height.toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                            ),
                          ),
                          TextSpan(
                            text: "cm",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Slider(
                      min: 0,
                      max: 300,
                      activeColor: Color(0xffE83D67),
                      inactiveColor: Colors.white,
                      value: height.toDouble(),
                      onChanged: (value) {
                        setState(() {
                          height = value.toInt();
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 29),
              Row(
                children: [
                  InfoContainer(
                    title: "Weight",
                    number: weight,
                    color: Color(0xff24263B),
                    increaseOnPressed: () {
                      if (weight < 100) {
                        setState(() {
                          weight++;
                        });
                      }
                    },
                    decreaseOnPressed: () {
                      setState(() {
                        weight--;
                      });
                    },
                  ),
                  SizedBox(width: 9),
                  InfoContainer(
                    title: "Age",
                    number: age,
                    color: Color(0xff333244),
                    increaseOnPressed: () {
                      if (age > 10) {}
                      setState(() {
                        age++;
                      });
                    },
                    decreaseOnPressed: () {
                      if (age > 10) {
                        setState(() {
                          age--;
                        });
                      }
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          double finalHight = height / 100;
          double bmiResult = weight / pow(finalHight, 2);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ResultScreen(result: bmiResult),
            ),
          );
        },
        child: Container(
          height: 100,
          alignment: Alignment.center,
          color: Color(0xffE83D67),
          child: Text(
            'calculator',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
