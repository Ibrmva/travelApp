import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
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
              "Travel.kg",
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
