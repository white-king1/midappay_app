// ignore_for_file: prefer_const_constructors, unused_import



import 'package:flutter/material.dart';
import 'package:midappay/ui/auth/signup.dart';
import 'package:midappay/main.dart';
import 'package:midappay/onboarding.dart';

class Splash extends StatefulWidget {
  Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
 @override
 void initState() {
   super.initState();
   nextPage();
 }

 Future<void> nextPage() async {
   Future.delayed(Duration (seconds: 5),() {
     Navigator.pushReplacement(
       context,  
       MaterialPageRoute(   
         builder: (context) => Onboarding(),
       ));
   });
   
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColorDark,
      body: Center(  
        child:  Text(   
          'MIDAPPAY',
          style: Theme.of(context)
          .textTheme
          .headline1
          ?.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}