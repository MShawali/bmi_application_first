import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final double result;
  final bool isMale;
  final int age;

  Result({
    required this.result,
    required this.isMale,
    required this.age,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0A0E20),
      appBar: AppBar(
        backgroundColor: const Color(0xff0A0E20),
        elevation: 0.0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.keyboard_arrow_left,
              size: 35,
              color: Colors.white,
            )),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Gender : ${isMale? "Male" : "Female"}",
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w800),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "Result : ${result.round()}",
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w800),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "Age : $age",
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w800),
            ),
          ],
        ),
      ),
    );
  }
}
