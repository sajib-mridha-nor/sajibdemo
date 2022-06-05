import 'dart:math';

import 'package:flutter/material.dart';

import 'animation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "All test",
      home:
          ContainerDemo(), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var ang = [
    pi / 180,
    pi / 100,
    pi / 80,
    pi / 50,
    pi / 20,
    pi / 10,
    pi / -50,
    pi / -150,
    pi / -180
  ];
  var i = 0.0;
  int index = 0;
  bool istrue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            setState(() {
              if (istrue == false) {
                istrue = true;
              } else {
                istrue = false;
              }
              print(istrue);
              // index = index + 1;
              // i = ang[index];
              // print(index);
            });
          },
          child: Stack(children: [
            AnimatedOpacity(
              duration: Duration(seconds: 2),
              opacity: istrue == true ? 1 : 0,
              curve: Curves.easeInOutQuint,
              child: Center(
                child: Container(
                  height: 400,
                  width: 400,
                  color: Color.fromARGB(255, 2, 64, 50),
                ),
              ),
            ),
            Center(
              child: Container(
                  height: 400,
                  width: 400,
                  color: Color.fromARGB(167, 63, 181, 157),
                  child: Center(child: BoxStack())),
            ),
          ]),
        ),
      ),
    );
  }
}

class BoxStack extends StatelessWidget {
  const BoxStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      // color: Color.fromARGB(167, 63, 181, 157),
      child: Stack(
        // clipBehavior: Clip.none,
        children: const [
          Positioned(
            top: 90,
            // bottom: 170,
            right: 0,
            left: 0,
            child: Divider(
              height: 4,
              thickness: 4,
              color: Color.fromARGB(129, 13, 142, 112),
            ),
          ),
          Positioned(
            left: 90,
            // left: 20,
            top: 0,
            bottom: 0,
            child: VerticalDivider(
              width: 4,
              thickness: 4,
              color: Color.fromARGB(129, 13, 142, 112),
            ),
          ),
          // SizedBox(
          //   height: 20,
          // ),
          Positioned(
            // top: 0,
            bottom: 90,
            right: 0,
            left: 0,
            child: Center(
              child: Divider(
                height: 4,
                thickness: 4,
                color: Color.fromARGB(129, 13, 142, 112),
              ),
            ),
          ),
          Positioned(
            right: 90,
            // left: 20,
            top: 0,
            bottom: 0,
            child: VerticalDivider(
              width: 4,
              thickness: 4,
              color: Color.fromARGB(129, 13, 142, 112),

              //  Color.fromARGB(255, 13, 142, 112),
            ),
          )
        ],
      ),
    );
  }
}
