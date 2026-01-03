import 'package:flutter/material.dart';

class InfoContainer extends StatelessWidget {
  final String title;
  final int number;
  final Color color;
  final void Function()? increaseOnPressed;
  final void Function()? decreaseOnPressed;

  const InfoContainer({
    super.key,
    required this.title,
    required this.number,
    required this.color,
    required this.increaseOnPressed,
    required this.decreaseOnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: color,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Color(0xff8B8C9E),
                fontSize: 20,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(height: 5),
            Text(
              number.toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 21),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,

              children: [
                FloatingActionButton.small(
                  heroTag: "$title 1",
                  onPressed: decreaseOnPressed,
                  backgroundColor: Color(0xff8B8C9E),
                  shape: CircleBorder(),
                  child: Icon(Icons.remove, color: Colors.white),
                ),
                FloatingActionButton.small(
                  heroTag: "$title 2",
                  onPressed: increaseOnPressed,
                  backgroundColor: Color(0xff8B8C9E),
                  shape: CircleBorder(),
                  child: Icon(Icons.add, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
