// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:midappay/ui/auth/login.dart';
import 'package:midappay/ui/auth/signup.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              //to add an image
              SizedBox(
                height: 20,
              ),

              Image(image: AssetImage('assets/midlogo.png')),
              Text(
                'Flowa',
                style: TextStyle(
                  fontSize: 24,
                  color: Color.fromARGB(255, 2, 1, 43),
                ),
              ),

              SizedBox(
                height: 20,
              ),

              //adding a H TAG
              Text('Your best and',
                  style: Theme.of(context).textTheme.headline4),

              Text(
                'secured online',
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(color: Color.fromARGB(255, 233, 56, 33)),
              ),

              Text(
                'transactions!',
                style: Theme.of(context).textTheme.headline4,
              ),

              SizedBox(
                height: 20,
              ),

              //Adding a P tag
              Text(
                'We ensure your cash is safe',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                'until both parties are satified.',
                style: Theme.of(context).textTheme.bodyText1,
              ),

              SizedBox(
                height: 50,
              ),

              Row(
                //when you want it to be centralized
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Signup(),
                        ),
                      );
                      print('Welcome to Midappay');
                    },
                    icon: Icon(Icons.mail),
                    label: Text('SIGNUP NOW'),
                    textColor: Colors.white,
                    color: Colors.purple,
                  ),
                  
                  SizedBox(
                    height: 50,
                    width: 50,
                  ),

                  Expanded(
                    child: RaisedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Login(),
                          ),
                        );
                        print('Successfully Registeerd');
                      },
                      
                      label: Text('LOGIN HERE'),
                      icon: Icon(Icons.arrow_circle_left_sharp),
                      textColor: Colors.white,
                      color: Colors.purple,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}