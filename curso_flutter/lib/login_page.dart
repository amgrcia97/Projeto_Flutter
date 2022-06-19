// ignore_for_file: deprecated_member_use, prefer_const_constructors, avoid_print, use_key_in_widget_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  Widget _body() {
    return Column(
      children: [
        SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 250,
                    height: 250,
                    child: Image.asset('assets/images/beach.png'),
                  ),
                  Container(
                    height: 20,
                  ),
                  Card(
                    color: Colors.blue.withOpacity(0.000005),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 8, right: 8, top: 8, bottom: 8),
                      child: Column(children: [
                        TextField(
                          onChanged: (text) {
                            email = text;
                          },
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              labelText: 'Email', border: OutlineInputBorder()),
                        ),
                        SizedBox(height: 10),
                        TextField(
                          onChanged: (text) {
                            password = text;
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                              labelText: 'Password',
                              border: OutlineInputBorder()),
                        ),
                        SizedBox(height: 10),
                        RaisedButton(
                          onPressed: () {
                            if (email == 'amgrcia97@gmail.com' &&
                                password == '0609') {
                              Navigator.of(context)
                                  .pushReplacementNamed('/home');
                            } else {
                              print('Wrong credentials');
                            }
                          },
                          child: Container(
                              width: double.infinity,
                              child: Text(
                                'Sign in',
                                textAlign: TextAlign.center,
                              )),
                          textColor: Colors.white,
                          color: Color.fromARGB(255, 83, 146, 228),
                        )
                      ]),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/images/Background_wall.jpg',
              fit: BoxFit.cover,
            )),
        Container(
          color: Colors.black.withOpacity(0.1),
        ),
        _body(),
      ],
    ));
  }
}
