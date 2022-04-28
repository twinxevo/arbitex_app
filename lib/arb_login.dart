import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

import 'arb_sign_up.dart';

class Login extends StatefulWidget {
  Login({
    Key? key,
  }) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

TextEditingController _emailField = TextEditingController();
TextEditingController _passwordField = TextEditingController();

class _LoginState extends State<Login> {

  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  bool _isObscure = true;
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffafafa),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 40.0, end: 40.0),
            Pin(size: 48.0, middle: 0.7722),
            child:
            //  layer: 'Continue' (group)
            Stack(
              children: <Widget>[
                //  layer: 'Rectangle 132' (shape)
                Form(
                  key: globalFormKey,
                  child: Container(
                    child: InkWell(
                      onTap: (){
                        print('Login Successful');
                        if (globalFormKey.currentState!.validate()) {
                        setState(() {
                          _isLoading = true;
                        });
                        Future.delayed(Duration(seconds: 3), () {
                          setState(() {
                            _isLoading = false;
                          });
                        });
                      }
                      },
                      child: Material(
                        color: const Color(0xff2699fb),
                        shadowColor: const Color(0xff58b0fb),
                        borderRadius: BorderRadius.circular(24.0),
                        elevation: 4.0,
                        child: Align(
                          alignment: Alignment(0.004, 0.027),
                          child: SizedBox(
                            width: 32.0,
                            height: 11.0,
                            child:
                            _isLoading?
                            CircularProgressIndicator(
                              color: const Color(0xffffffff),
                            ): Text(
                              'LOGIN',
                              style: TextStyle(
                                fontFamily: 'Arial',
                                fontSize: 11,
                                color: const Color(0xffffffff),
                                fontWeight: FontWeight.w700,
                                height: 1.2,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Pinned.fromPins(
            Pin(size: 116.0, middle: 0.5058),
            Pin(size: 11.0, end: 81.0),
            child:
            //  layer: 'Don`t have an account?' (text)
            InkWell(
              onTap: () {
                print('Back to Signup page');
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (_)=> ArbSignUp()));
              },
              child: Text(
                'Don`t have an account?',
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 12,
                  color: const Color(0xff2699fb),
                  height: 2.2,
                ),
                textHeightBehavior:
                TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.center,
                softWrap: false,
              ),
            ),
          ),

          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 169.0, start: 0.0),
            child:
            //  layer: 'Header' (group)
            Stack(
              children: <Widget>[
                //  layer: 'Rectangle 134' (shape)
                Container(
                  color: const Color(0xff2699fb),
                ),
                Pinned.fromPins(
                  Pin(size: 96.0, middle: 0.5018),
                  Pin(size: 33.0, end: 24.0),
                  child:
                  //  layer: 'ADOBE XD' (text)
                  Text(
                    'ArbitEx',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 30,
                      color: const Color(0xffffffff),
                    ),
                    textAlign: TextAlign.center,
                    softWrap: false,
                  ),
                ),
              ],
            ),
          ),

          Pinned.fromPins(
            Pin(start: 40.0, end: 40.0),
            Pin(size: 120.0, middle: 0.3821),
            child:
            //  layer: 'Inputs' (group)
            Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 48.0, start: 0.0),
                  child:
                  // layer: 'inputs' (group)
                  Stack(
                    children: <Widget>[
                      //  layer: 'Rectangle 123' (shape)
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          borderRadius: BorderRadius.circular(24.0),
                          border: Border.all(
                              width: 2.0, color: const Color(0xffbce0fd)
                          ),
                        ),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          controller: _emailField,
                          validator: (input) => !(input?.contains('@') ?? false)
                              ? "Email id should be valid"
                              : null,
                          decoration: const InputDecoration(
                            hintText: 'Twin Xevo',
                            enabledBorder: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.email_outlined,
                            ),
                          ),
                        ),

                      ),

                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 48.0, end: 0.0),
                  child:
                  //  layer: 'inputs' (group)
                  Stack(
                    children: <Widget>[
                      //  layer: 'Rectangle 123' (shape)
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          borderRadius: BorderRadius.circular(24.0),
                          border: Border.all(
                              width: 2.0, color: const Color(0xffbce0fd)),
                        ),

                        child: TextFormField(
                          obscureText: _isObscure,
                          keyboardType: TextInputType.text,
                          controller: _passwordField,
                          //onSaved: (input) => requestModel.pass = input!,
                          validator: (input) => (input != null && input.length < 6)
                              ? "Password should be more than 5 characters"
                              : null,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                                icon: Icon(_isObscure
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                                onPressed: () {
                                  setState(() {
                                    _isObscure = !_isObscure;
                                  });
                                }),
                            hintText: 'j€Lly2₦FI&h!#',
                            enabledBorder: InputBorder.none,
                            prefixIcon: const Icon(
                              Icons.lock_outline_rounded,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}