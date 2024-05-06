import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GAURAV GARMODE',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: ListView(
        children:  [
              Container(
                height: 500,
              width:  MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Image.asset('assets/images/bgtop.jpg', width: MediaQuery.of(context).size.width, fit: BoxFit.cover,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      gradient: RadialGradient(
                        radius: 1.1,
                        colors: [Colors.black.withOpacity(0.2), Colors.black.withOpacity(0.08), Colors.black.withOpacity(0.2)]
                      )
                    ),
                  ),
                  Positioned(
                    top: 100,
                    right: MediaQuery.of(context).size.width*0.25,
                    child: ClipRRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 5,
                          sigmaY: 5,
                        ),
                        child: Center(
                          child: Container(
                            height: 300,
                            width: MediaQuery.of(context).size.width*0.5,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white.withOpacity(0.8),
                                style: BorderStyle.solid,
                                width: 0.5,
                              ),
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                colors: [Colors.white.withOpacity(0.5),Colors.white.withOpacity(0.08)]
                              )
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 18.0, left: 12, bottom: 18.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('GAURAV GARMODE', style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 35,
                                  fontWeight: FontWeight.w900,
                                ),),
                                  Spacer(),
                                  Text('FLUTTER DEVELOPER', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),),
                                  Spacer(),
                                  Spacer(),

                                  Text('GARMODE', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 35,
                                    fontWeight: FontWeight.w900,
                                  ),),
                                  Text('Flutter developer', style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),),
                                  Spacer(),
                                  Spacer(),
                                  Spacer(),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 110,
                    child: Opacity(
                        opacity: 0.25,
                        child: Image.asset('assets/images/gg_profile.png', color: Colors.black,)),

                  ),
                  Positioned(
                    bottom: 0,
                    right: 100,
                    child: Image.asset('assets/images/gg_profile.png'),
                  ),
                ],
              ),
              ),
            ]
      ),
    );
  }
}
