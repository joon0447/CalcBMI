import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("BMI 계산기"),
        ),
        body: Column(
          children: [
            Row(
              children: [
                const SizedBox(height: 200),
                Container(
                  margin: const EdgeInsets.all(20),
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.1,
                  color: Colors.blue,
                  child: const Center(
                    child: Text(
                      "남자",
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(20),
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.1,
                  color: Colors.blue,
                  child: const Center(
                    child: Text(
                      "여자",
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(30),
                  child: const Text(
                    "키",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: 50,
                  child: const TextField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(30),
                  child: const Text(
                    "몸무게",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: 50,
                  child: const TextField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(30),
                  child: const Text(
                    "나이",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: 50,
                  child: const TextField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  ),
                )
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.height * 0.1,
              color: Colors.blue,
              child: GestureDetector(
                onTap: () {
                  print("dsds");
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
