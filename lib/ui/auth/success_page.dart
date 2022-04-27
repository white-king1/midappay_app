// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:midappay/ui/auth/login.dart';
class SuccessPage extends StatelessWidget {
  const SuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              //to add an image
              // ignore: prefer_const_constructors
              SizedBox(
                height: 20,
              ),

              //adding a H TAG
              Text(
                'Congrattulation,you are',
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(color: Color.fromARGB(255, 23, 11, 93)),
              ),

              Text(
                'successfully registered!',
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(color: Color.fromARGB(255, 23, 11, 93)),
              ),

              SizedBox(
                height: 20,
              ),

              //Adding a P tag
              Text(
                'Star using the App',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                'Terms and Conditions applied.',
                style: Theme.of(context).textTheme.bodyText1,
              ),

              SizedBox(
                height: 40,
              ),

              Image(image: AssetImage('assets/midlogo.png')),

              SizedBox(
                height: 50,
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
                  icon: Icon(Icons.arrow_circle_left_sharp),
                  label: Text('START'),
                  textColor: Colors.white,
                  color: Colors.purple,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}