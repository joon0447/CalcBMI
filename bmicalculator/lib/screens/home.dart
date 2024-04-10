import 'package:bmicalculator/func/buttoncolor.dart';
import 'package:bmicalculator/func/calc.dart';
import 'package:bmicalculator/screens/result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

bool gender = true;
int height = 0;
int weight = 0;

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("BMI 계산기"),
        ),
        body: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 128, 239, 247),
              ),
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            maleColor();
                          });
                        },
                        iconSize: 60,
                        icon: Icon(
                          Icons.male,
                          color: gender == true ? Colors.blue : Colors.black,
                        ),
                      ),
                      Text(
                        "남자",
                        style: TextStyle(
                          fontSize: 25,
                          color: gender == true ? Colors.blue : Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                    height: 1,
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            femaleColor();
                          });
                        },
                        iconSize: 60,
                        icon: Icon(
                          Icons.female,
                          color: gender == false ? Colors.blue : Colors.black,
                        ),
                      ),
                      Text(
                        "여자",
                        style: TextStyle(
                          fontSize: 25,
                          color: gender == false ? Colors.blue : Colors.black,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 128, 239, 247),
              ),
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
              child: Column(
                children: [
                  const Text(
                    "키",
                    style: TextStyle(fontSize: 25),
                  ),
                  Slider(
                    value: height.toDouble(),
                    min: 0,
                    max: 250,
                    divisions: 250,
                    onChanged: (value) {
                      setState(
                        () {
                          height = value.toInt();
                        },
                      );
                    },
                  ),
                  Text("${height}cm"),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 128, 239, 247),
              ),
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
              child: Column(
                children: [
                  const Text(
                    "몸무게",
                    style: TextStyle(fontSize: 25),
                  ),
                  Slider(
                    value: weight.toDouble(),
                    min: 0,
                    max: 250,
                    divisions: 250,
                    onChanged: (value) {
                      setState(
                        () {
                          weight = value.toInt();
                        },
                      );
                    },
                  ),
                  Text("${weight}kg"),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.height * 0.1,
              color: Colors.blue,
              child: GestureDetector(
                onTap: () {
                  calc(height, weight);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Result()),
                  );
                },
                child: const Center(
                  child: Text(
                    "계산하기",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
