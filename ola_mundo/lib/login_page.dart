// ignore_for_file: deprecated_member_use, prefer_const_constructors, avoid_print

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Sign In'),
                SizedBox(height: 30),
                TextField(
                  onChanged: (text) {
                    email = text;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: 'Email', border: OutlineInputBorder()),
                ),
                TextField(
                  onChanged: (text) {
                    password = text;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'Password', border: OutlineInputBorder()),
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 40,
                  child: RaisedButton(
                    onPressed: () {
                      if (email == 'amgrcia97@gmail.com' &&
                          password == '0609') {
                        print('All right');
                      } else {
                        print('Wrong credentials');
                      }
                    },
                    child: Text('Sign in'),
                    textColor: Colors.white,
                    color: Colors.pink,
                  ),
                ),
                SizedBox(height: 10),
                Text('or use one of your social profiles'),
                SizedBox(height: 10),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 160,
                        height: 40,
                        child: RaisedButton(
                          onPressed: () {
                            print('Twitter');
                          },
                          child: Text('Twitter'),
                          textColor: Colors.white,
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(
                        width: 160,
                        height: 40,
                        child: RaisedButton(
                          onPressed: () {
                            print('Facebook');
                          },
                          child: Text('Facebook'),
                          textColor: Colors.white,
                          color: Color.fromARGB(255, 61, 63, 235),
                        ),
                      ),
                    ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
