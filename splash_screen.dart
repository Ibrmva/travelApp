import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';

import 'package:travel/home.dart';

void main() {
  runApp(const WelcomePage());
}

class WelcomePage extends StatefulWidget{
  const WelcomePage({super.key});
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> with SingleTickerProviderStateMixin{
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (_) => const LoginPage(),
      ));
    });
  }
    @override
    void dispose() {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
      super.dispose();
    }
    // _navigatetologin();

    // Timer(
    //     Duration(seconds: 5),()=>Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => LoginPage ()))
    // );

  // _navigatetologin() async{
  //   await Future.delayed(Duration(microseconds: 1500), () {});
  //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
  // }

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/background.png"), fit: BoxFit.cover),
          ),
          child: Center(
            child: Text(
              "Welcome to Travel.kg",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ),
      ),
    );
  }
}


