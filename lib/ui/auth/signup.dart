// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:midappay/ui/auth/login.dart';
import 'package:midappay/ui/auth/success_page.dart';

class Signup extends StatefulWidget {
  Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Image(image: AssetImage('/assets/register.png')),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Signup',
                  style: TextStyle(
                    fontSize: 24,
                    color: Color.fromARGB(255, 10, 8, 121),
                  ),
                ),
                Text('Set a name for your profile, here is the password'),
                SizedBox(
                  height: 20,
                ),
                Text('FIRST NAME'),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'First Name',
                    suffixIcon: Icon(
                      Icons.mode_edit_outline_outlined,
                    ),
                    //suffixIcon: Icon(Icons.remove_red_eye),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text('LAST NAME'),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Last Name',
                    suffixIcon: Icon(
                      Icons.mode_edit_outline_outlined,
                    ),
                    //suffixIcon: Icon(Icons.remove_red_eye),
                  ),
                ),

                SizedBox(
                  height: 20,
                ),
                Text('EMAIL'),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    suffixIcon: Icon(
                      Icons.unsubscribe_outlined,
                    ),
                    //suffixIcon: Icon(Icons.remove_red_eye),
                  ),
                ),

                SizedBox(
                  height: 20,
                ),
                Text('PHONE'),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Phone Number',
                    suffixIcon: Icon(
                      Icons.tty_outlined,
                    ),
                  ),
                ),

                SizedBox(
                  height: 20,
                ),
                Text('PASSWORD'),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    suffixIcon: Icon(
                      Icons.visibility_outlined,
                    ),
                  ),
                ),

                SizedBox(
                  height: 20,
                ),
                Text('CONFIRM PASSWORD'),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Confirm Password',
                    suffixIcon: Icon(
                      Icons.visibility_outlined,
                    ),
                    //suffixIcon: Icon(Icons.remove_red_eye),
                  ),
                ),

                SizedBox(
                  height: 20,
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
                          builder: (context) => SuccessPage(),
                        ),
                      );
                      print('Welcome to Midappay');
                    },
                    icon: Icon(Icons.mail),
                    label: Text('SIGNUP'),
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
                      },
                      
                      label: Text('LOGIN'),
                      icon: Icon(Icons.arrow_circle_left_sharp),
                      textColor: Colors.white,
                      color: Colors.purple,
                    ),
                  ),
                ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}