import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/custom_app_bar.dart';

class ResultScreen extends StatelessWidget {
  final double result;
  ResultScreen({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(withLeading: true),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 26, vertical: 20),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Title(
                color: Colors.white,
                child: Text(
                  'Your Result',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),
            Container(
              width: double.infinity,
              height: 503,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xff333244),
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: Text(
                      getStatusText(),
                      style: TextStyle(
                        color: Color(0xff21BF73),
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(height: 33),
                  Text(
                    result.toStringAsFixed(2),
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                  SizedBox(height: 60),
                  Text(
                    statusBody,
                    style: TextStyle(
                      color: Color(0xff8B8C9E),
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            SizedBox(height: 29),
          ],
        ),
      ),
    );
  }

  String statusBody = "";

  String getStatusText() {
    if (result < 18.5) {
      statusBody =
          "You are underweight. Consider a balanced diet to gain weight healthily.";
      return "Under Weight";
    } else if (result >= 18.5 && result < 25) {
      statusBody =
          "Your weight is normal. Keep maintaining a healthy lifestyle.";
      return "Normal";
    } else if (result >= 25 && result < 30) {
      statusBody = "You are overweight. Try balancing your diet and exercise.";
      return "Over Weight";
    } else {
      statusBody =
          "You are obese. It is recommended to consult a doctor or nutrition specialist.";
      return "Obese";
    }
  }
}
