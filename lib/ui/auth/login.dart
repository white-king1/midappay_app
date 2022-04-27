// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:midappay/ui/account/home.dart';


class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Image(image: AssetImage('/assets/midlogo.png')),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 24,
                    color: Color.fromARGB(255, 10, 8, 121),
                  ),
                ),
                Text('Set a name for your profile, here is the password'),
                SizedBox(
                  height: 20,
                ),
                Text('EMAIL'),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    //suffixIcon: Icon(Icons.remove_red_eye),
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
                      Icons.visibility_off_outlined,
                    ),
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
                          builder: (context) => Home(),
                        ),
                      );
                    },
                    icon: Icon(Icons.mail),
                    label: Text('LOGIN'),
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
                        
                      },
                      
                      label: Text('FORGOT PASSWORD'),
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
      ),
    );
  }
}