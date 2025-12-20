import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C2135),
      appBar: AppBar(
        title: Text(
          "Bmi Calculator",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff24263B),
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 26, vertical: 20),
        child: Column(
          children: [
            //gander row
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 180,
                    width: 155,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xff24263B),
                    ),
                    child: Column(
                      children: [
                        Icon(Icons.male, size: 144, color: Colors.white),
                        Text(
                          "Male",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 9),
                Expanded(
                  child: Container(
                    height: 180,
                    width: 155,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xff333244),
                    ),
                    child: Column(
                      children: [
                        Icon(Icons.female, size: 144, color: Colors.white),
                        Text(
                          "female",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
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
                          text: "150",
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
                    value: 200,
                    onChanged: (value) {
                      print(value);
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 29),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xff24263B),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Weight",
                          style: TextStyle(
                            color: Color(0xff8B8C9E),
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "60",
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
                              onPressed: () {
                                print("remove");
                              },
                              child: Icon(Icons.remove, color: Colors.white),
                              backgroundColor: Color(0xff8B8C9E),
                              shape: CircleBorder(),
                            ),
                            FloatingActionButton.small(
                              onPressed: () {
                                print("add");
                              },
                              child: Icon(Icons.add, color: Colors.white),
                              backgroundColor: Color(0xff8B8C9E),
                              shape: CircleBorder(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 9),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xff333244),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "age",
                          style: TextStyle(
                            color: Color(0xff8B8C9E),
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "25",
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
                              onPressed: () {
                                print("remove");
                              },
                              child: Icon(Icons.remove, color: Colors.white),
                              backgroundColor: Color(0xff8B8C9E),
                              shape: CircleBorder(),
                            ),
                            FloatingActionButton.small(
                              onPressed: () {
                                print("add");
                              },
                              child: Icon(Icons.add, color: Colors.white),
                              backgroundColor: Color(0xff8B8C9E),
                              shape: CircleBorder(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
        child: BottomAppBar(
          color: Color(0xffE83D67),
          padding: const EdgeInsets.all(16.0),
          child: Center(
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
      ),
    );
  }
}
