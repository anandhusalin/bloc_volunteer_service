import 'package:bloc_volunteer_service/core/constant.dart';
import 'package:bloc_volunteer_service/presentaion/mainpage/scrren_main_page.dart';
import 'package:flutter/material.dart';

import '../signup_page/screen_signup.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
String p =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

RegExp regExp = RegExp(p);

void validation() {
  final FormState? _form = _formkey.currentState;
  if (_form!.validate()) {
  } else {
    print("No");
  }
}

bool obsertext = true;

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formkey,
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage('images/1.jpg'))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange),
                    ),
                    ConstSize.kheight,
                    TextFormField(
                      validator: (value) {
                        if (value == '') {
                          return 'Please enter email';
                        } else if (!regExp.hasMatch(value!)) {
                          return 'Email is invalid';
                        }
                        return '';
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          hintText: 'Email',
                          hintStyle: const TextStyle(color: Colors.black)),
                    ),
                    ConstSize.kheight,
                    TextFormField(
                      obscureText: obsertext,
                      validator: (value) {
                        if (value == '') {
                          return 'Please enter Password';
                        } else if (value!.length < 8) {
                          return 'Invalid Password';
                        }

                        return '';
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          hintText: 'Password',
                          suffixIcon: GestureDetector(
                            onTap: () {
                              FocusScope.of(context).unfocus();

                              setState(() {
                                obsertext = !obsertext;
                              });
                            },
                            child: Icon(
                              obsertext == true
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Colors.black,
                            ),
                          ),
                          hintStyle: const TextStyle(color: Colors.black)),
                    ),
                    ConstSize.kheight,
                    Row(
                      children: [
                        const Text('I Have Not  An Account!'),
                        ConstSize.kwidth,
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .pushReplacement(MaterialPageRoute(
                              builder: (context) => const SignUp(),
                            ));
                          },
                          child: const Text(
                            'SigunUp',
                            style: TextStyle(
                                color: Colors.cyan,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        )
                      ],
                    ),
                    ConstSize.kheight2,
                    ConstSize.kheight1,
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      height: 45,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.orange),
                        onPressed: () {
                          validation();
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ScreenMainPage()));
                        },
                        child: const Text(
                          'LOGIN',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
