import 'package:flutter/material.dart';

import 'main.dart';

class Myanimation extends StatelessWidget {
  const Myanimation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: TweenAnimationBuilder<double>(
                tween: Tween<double>(begin: 1.0, end: 0),
                curve: Curves.ease,
                duration: const Duration(seconds: 3),
                builder: (BuildContext context, double opacity, Widget? child) {
                  return Opacity(
                      opacity: opacity,
                      child: Container(
                          width: 200,
                          height: 200,
                          color: Color.fromARGB(129, 13, 142, 112),
                          child: BoxStack()));
                }),
          ),
          // OutlinedButton(
          //     onPressed: () {
          //       Navigator.of(context).push(pageroute(AddImage()));
          //     },
          //     child: Text("data"))
        ],
      ),
    );
  }
}

class ContainerDemo extends StatefulWidget {
  const ContainerDemo({Key? key}) : super(key: key);

  @override
  State<ContainerDemo> createState() => _ContainerDemoState();
}

class _ContainerDemoState extends State<ContainerDemo> {
  double h = 0.0;
  double w = 0.0;
  bool istrue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          height: 500,
          width: double.maxFinite,
          color: Color.fromARGB(129, 13, 142, 112),
          child: Column(
            children: [
              OutlinedButton(
                  onLongPress: (() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => ContainerDemo2()));
                  }),
                  onPressed: () {
                    setState(() {
                      // h = 400;
                      // w = 400;
                      //
                      istrue = !istrue;
                    });
                  },
                  child: Text("data")),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 300,
                width: 300,
                child: Stack(children: [
                  Center(
                    child: Container(
                      // height: h,
                      // width: w,
                      // color: Color.fromARGB(129, 13, 142, 112),
                      child: AnimatedContainer(
                        duration: new Duration(seconds: 2),
                        width: istrue == true ? 0.0 : 300,
                        height: istrue == true ? 0.0 : 300,
                        child: BoxStack(),
                      ),
                    ),
                  ),
                  // Center(
                  //   child: Container(
                  //     height: 400,
                  //     width: 400,
                  //     color: Color.fromARGB(129, 13, 142, 112),
                  //   ),
                  // ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContainerDemo2 extends StatefulWidget {
  const ContainerDemo2({Key? key}) : super(key: key);

  @override
  State<ContainerDemo2> createState() => _ContainerDemo2State();
}

class _ContainerDemo2State extends State<ContainerDemo2> {
  double h = 0.0;
  double w = 0.0;
  bool istrue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          height: 500,
          width: double.maxFinite,
          color: Color.fromARGB(129, 13, 142, 112),
          child: Column(
            children: [
              OutlinedButton(
                  onLongPress: (() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => ContainerDemo()));
                  }),
                  onPressed: () {
                    setState(() {
                      // h = 400;
                      // w = 400;
                      //

                      istrue = !istrue;
                    });
                  },
                  child: Text("data")),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 300,
                width: 300,
                child: Stack(children: [
                  Center(
                    child: Container(
                      // height: h,
                      // width: w,
                      // color: Color.fromARGB(129, 13, 142, 112),
                      child: AnimatedContainer(
                        curve: Curves.fastLinearToSlowEaseIn,
                        duration: new Duration(seconds: 1),
                        width: istrue == true ? 0.0 : 300,
                        height: istrue == true ? 0.0 : 300,
                        child: istrue == true
                            ? Center(
                                child: Text("Game is close  !!"),
                              )
                            : BoxStack(),
                      ),
                    ),
                  ),
                  // Center(
                  //   child: Container(
                  //     height: 400,
                  //     width: 400,
                  //     color: Color.fromARGB(129, 13, 142, 112),
                  //   ),
                  // ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Myanimation2 extends StatefulWidget {
  // const Myanimation2({ Key? key }) : super(key: key);

  @override
  _Myanimation2State createState() => _Myanimation2State();
}

class _Myanimation2State extends State<Myanimation2> {
  bool selected = true;
  var opct = .1;

  onopacity() {
    setState(() {
      opct == .1 ? opct = .9 : opct = 0.1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
              child: Container(
            height: 300,
            width: 300,
            color: Colors.yellow[200],
            child: AnimatedAlign(
              alignment: selected ? Alignment.bottomRight : Alignment.topLeft,
              duration: Duration(seconds: 4),
              curve: Curves.decelerate,
              child: InkWell(
                onTap: () {
                  setState(() {
                    selected = !selected;
                  });
                },
                child: FlutterLogo(
                  size: 30,
                ),
              ),
            ),
          )),
          Container(
            height: 300,
            width: 400,
            color: Colors.blueGrey,
            child: Opacity(
              opacity: opct,
              child: FlutterLogo(
                duration: Duration(seconds: 4),
                size: 30,
              ),
            ),
          ),
          OutlinedButton(onPressed: onopacity, child: Text("Button"))
        ],
      ),
    );
  }
}
