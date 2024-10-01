import 'dart:math';

import 'package:bmi_application_first/Result.dart';
import 'package:flutter/material.dart';

class BMI extends StatefulWidget {
  const BMI({super.key});

  @override
  State<StatefulWidget> createState() => _MyBMI();
}

class _MyBMI extends State<StatefulWidget> {
  bool isMale = true;
  double height = 120;
  int weight = 40;
  int age = 22;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0A0E20),
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: const Color(0xff0A0E20),
        title: const Text(
          "BMI CALCULATE",
          style: TextStyle(
            fontWeight: FontWeight.w900,
            color: Colors.white
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {
                      setState(() {
                        isMale = true;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: isMale
                              ? const Color(0xffF50D56)
                              : const Color(0xff111327),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.male_sharp,
                            size: 130,
                            color: Colors.white,
                          ),
                          Text(
                            "Male",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 22),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {
                      setState(() {
                        isMale = false;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: !isMale
                              ? const Color(0xffF50D56)
                              : const Color(0xff111327),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.female_sharp,
                            size: 130,
                            color: Colors.white,
                          ),
                          Text(
                            "FEMALE",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 22),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xff1D1E32),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "HEIGHT",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Color(0xff4C4F5D),
                        fontSize: 22),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        "${height.round()}",
                        style: const TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 42,
                            color: Colors.white),
                      ),
                      const Text(
                        "CM",
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                            fontSize: 18),
                      )
                    ],
                  ),
                  Slider(
                      value: height,
                      max: 360,
                      min: 1,
                      activeColor: const Color(0xffBFC0C5),
                      inactiveColor: const Color(0xff0A0E20),
                      thumbColor: const Color(0xffF50D56),
                      onChanged: (value) {
                        setState(() {
                          height = value;
                        });
                      })
                ],
              ),
            ),
          )),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff1D1E32),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "WEIGHT",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff4C4F5D),
                            ),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Text(
                            "$weight",
                            style: const TextStyle(
                              fontSize: 45,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                elevation: 0.0,
                                backgroundColor:
                                    const Color.fromARGB(255, 139, 139, 139),
                                mini: true,
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                heroTag: "weight--",
                                child: const Icon(
                                  Icons.remove,
                                  color: Colors.black,
                                ),
                              ),
                              FloatingActionButton(
                                elevation: 0.0,
                                backgroundColor:
                                    const Color.fromARGB(255, 139, 139, 139),
                                mini: true,
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                heroTag: "weight++",
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.black,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff1D1E32),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "AGE",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff4C4F5D),
                            ),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Text(
                            "$age",
                            style: const TextStyle(
                              fontSize: 45,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                elevation: 0.0,
                                backgroundColor:
                                    const Color.fromARGB(255, 139, 139, 139),
                                mini: true,
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                heroTag: "age--",
                                child: const Icon(
                                  Icons.remove,
                                  color: Colors.black,
                                ),
                              ),
                              FloatingActionButton(
                                elevation: 0.0,
                                backgroundColor:
                                    const Color.fromARGB(255, 139, 139, 139),
                                mini: true,
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                heroTag: "age++",
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.black,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              color: Color(0xffF50D56),
            ),
            width: double.infinity,
            height: 60.0,
            child: MaterialButton(
              onPressed: () {
                var result = weight / pow(height / 100, 2);
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Result(result: result, isMale: isMale, age: age,)));
              },
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              child: const Text(
                "CALCULATE",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
