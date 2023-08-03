
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home_page.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFADEF0),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 150, top: 30, bottom: 15),
              child: Text(
                "Sign in",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                    color: Colors.black),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: SizedBox(
                        height: 50,
                        width: 330,
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your Full name';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: UnderlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0)),
                              ),
                              hintText: 'Full name'),
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 10),
                      child: SizedBox(
                        height: 50,
                        width: 330,
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your Number phone';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: UnderlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0)),
                              ),
                              hintText: 'Number phone'),
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        height: 50,
                        width: 330,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                        child: ElevatedButton(


                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30), // <-- Radius
                              ),
                            backgroundColor: Colors.pink,
                          ),
                            child: Text('Login'),
                            onPressed: () async{
                              var sharedPref = await SharedPreferences.getInstance();
                              // sharedPref.setBool(key, value)
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyHomePage(title: '')));
                              var _emailController;
                              String email = _emailController.text;
                              var _passwordController;
                              String password = _passwordController.text;
                              // Check if the email and password are valid.
                              if (email.isEmpty || password.isEmpty) {

                                final snackBar = SnackBar(
                                  content: const Text('Hi, I am a SnackBar!'),
                                  backgroundColor: (Colors.grey),
                                  action: SnackBarAction(
                                    label: 'dismiss',
                                    textColor: Colors.white,
                                    onPressed: () {},
                                  ),
                                );
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                              };
                            }),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Don't have an Account?",
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "Create One",
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5),
                                child: Image.asset("assets/apple.png"),

                              ),
                              Padding(
                                padding: const EdgeInsets.all(5),
                                child: Image.asset("assets/gg.png"),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5),
                                child: Image.asset("assets/fb.png"),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
