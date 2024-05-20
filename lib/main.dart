import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'dart:math' as math;
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(
        title: '',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override

  num secondvalue = 0;
  num thirdvalue = 0;
  int value = 0, value1 = 0, value2 = 0;
  num fourvalue = 120 * (DateTime.now().hour - 1) + 720;
  TextEditingController secTime=TextEditingController();
  TextEditingController minTime=TextEditingController();
  int _seconds1=0;
  int _minute1=0;
  int y = 0;
  int f = 0;
  List l = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
  List l1 = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
  ];

  @override
  void initState() {
    _startcount();
    super.initState();
  }

  _startcount() {
    setState(() {
      Future.delayed(Duration(seconds: 1), () {
        value = int.parse(DateTime.now().second.toString());
        value1 = int.parse(DateTime.now().minute.toString());
        value2 = int.parse(DateTime.now().hour.toString());
        print(
            "${DateTime.now().hour}:${DateTime.now().minute}:${DateTime.now().second}");
        thirdvalue = (540 + (value1 * 12));

        if (value2 > 12) {
          value2 -= 12;
        }
        fourvalue = ((48 * value2) + 450);

        secondvalue = ((24 * value) + 1080);
        print("second $secondvalue");
        print("minute $thirdvalue");
        print("hour $fourvalue");
        _startcount();
      });
    });
  }

  timmer(String secTime,String minTime){
    Future.delayed(Duration(seconds: 1),(){
      _seconds1 = int.parse(secTime);
      _minute1=int.parse(minTime);

      if(_seconds1==59){
        _minute1--;
      }
      setState(() {
        _seconds1--;
      });
      if(_minute1!=0||_seconds1!=0){
        if(_seconds1==0){
          _seconds1=59;
        }
        timmer(_seconds1.toString(), _minute1.toString());
      }
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: Color(0xFF152552),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
          shadows: [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 15,
              offset: Offset(5, 9),
              spreadRadius: 0,
            )
          ],
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 292,
                height: 292,
                decoration: ShapeDecoration(
                  color: Color(0xFF15264F),
                  shape: OvalBorder(),
                  shadows: [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 40,
                      offset: Offset(-44, -7),
                      spreadRadius: 15,
                    ),
                    BoxShadow(
                      color: Color(0x99162F6A),
                      blurRadius: 30,
                      offset: Offset(36, 14),
                      spreadRadius: 9,
                    ),
                  ],
                ),
                child: Stack(children: [
                  for (var g in l)
                    Transform.rotate(
                      angle: (f += 120) * math.pi / 720,
                      child: Center(
                        child: Text(
                          "${g.toString()}\n\n\n\n\n\n\n\n\n\n\n\n\n",
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                  for (var z in l1)
                    Transform.rotate(
                      angle: (y += 24) * math.pi / 720,
                      child: Center(
                        child: Divider(
                          indent: 30,
                          endIndent: 150,
                          color: Colors.deepPurpleAccent,
                          thickness: 1.2,
                        ),
                      ),
                    ),
                  Positioned(
                    top: 0.6,
                    left: 0.6,
                    right: 0.6,
                    bottom: 0.6,
                    child: Transform.rotate(
                      angle: secondvalue * math.pi / 720,
                      child: Divider(
                        thickness: 2,
                        indent: 150,
                        endIndent: 28,
                        color: Colors.pink,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0.6,
                    left: 0.6,
                    right: 0.6,
                    bottom: 0.6,
                    child: Transform.rotate(
                      angle: fourvalue * math.pi / 294,
                      child: Divider(
                        thickness: 4.5,
                        indent: 150,
                        endIndent: 70,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0.6,
                    left: 0.6,
                    right: 0.6,
                    bottom: 0.6,
                    child: Transform.rotate(
                      angle: thirdvalue * math.pi / 360,
                      child: Divider(
                        thickness: 3,
                        indent: 150,
                        endIndent: 40,
                        color: Colors.yellow,
                      ),
                    ),
                  ),
                ]),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      "$value2",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: Colors.blue),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    ":",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Center(
                    child: Text(
                      "$value1",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: Colors.blue),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    ":",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Center(
                    child: Text(
                      "$value",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: Colors.blue),
                    ),
                  ),
                ],
              ),SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 70,
                      width: 250,
                      child: Center(child: Text('${_minute1.toString()} : ${_seconds1.toString()}',
                        style: TextStyle(fontSize: 40,color: Colors.white),),),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [Colors.deepPurpleAccent,Colors.deepPurpleAccent]),
                          borderRadius: BorderRadius.circular(20)
                      ),
                    ),SizedBox(height: 20,)

                    ,Container(
                      height: 70,
                      width: 250,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [Colors.deepPurpleAccent,Colors.deepPurpleAccent]),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: TextField(
                        controller: minTime,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),
                      ),
                    ),SizedBox(height: 20,)

                    ,Container(
                      height: 70,
                      width: 250,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [Colors.deepPurpleAccent,Colors.deepPurpleAccent]),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: TextField(
                        controller:secTime,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),
                      ),
                    ),SizedBox(height: 20,)

                    ,ElevatedButton(onPressed: (){
                      timmer(secTime.text,minTime.text);
                    }, child: Text("Start"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0x99162F6A),
                        foregroundColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
