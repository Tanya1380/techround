import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
@override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Container(
          height: 350,
          width: 275,
          color: Colors.blue.shade50,

        child: Center(
          child: Container(
            height: 300,
            width: 225,

            decoration: BoxDecoration(
              boxShadow: const [ BoxShadow(
                color: Colors.grey,
                blurRadius:7.5,
                offset: Offset(3,3),
                spreadRadius: 5.0
              )],
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(125.0),
                topLeft: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0)
              ),
              gradient: LinearGradient(begin: Alignment.topCenter,
              colors: [
                Colors.red.shade600,
                Colors.red.shade400,
                Colors.red.shade300,
                Colors.red.shade200
              ])
            ),
            child: Stack(
              children: [Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children:  [
                  SizedBox(
                    child: Positioned(
                      top: 0,
                        left: 0,
                        child: Image.asset('assets/break.png',
                      height: 100.0,
                      width: 100.0,
                    )),
                  ),
                  const Text(
                    "Breakfast \n\n",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                    ),
                  ),
                  const Text(
                    "Bread, \n"
                    "Peanut Butter\n"
                        "Apple\n \n",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  const Text(
                    "525 Kcal",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0
                    ),
                  )
                ],
              ),
            ])
            ),
        ),
      )),
    );
  }
}