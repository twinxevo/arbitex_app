import 'package:arbitex/Pages/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';

import '../Navigation/buttom_navigationBar.dart';
import '../api_service/login_data_class.dart';
import '../models/login_model.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

TextEditingController _emailField = TextEditingController();
TextEditingController _passwordField = TextEditingController();

class _LoginState extends State<Login> {
  bool _isObscure = true;
  bool _isLoading = false;
  @override

  void dispose(){
    _emailField.dispose();
    _passwordField.dispose();

    super.dispose();
  }
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      //backgroundColor: Colors.blue[200],
      body: Consumer<LoginDataClass>(builder: (context, data, child) {
      return data.loading
          ? Center(
        child: Container(
          child: SpinKitThreeBounce(
            itemBuilder: (BuildContext context, int index) {
              return DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: index.isEven ? Colors.red : Colors.blue[900],
                ),
              );
            },
          ),
        ),
      )
        : SafeArea(
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Stack(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        SizedBox(height: 150),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8, right: 200),
                              child: Text(
                                'Sign In',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                  letterSpacing: 2,
                                  backgroundColor: Colors.blue[900],
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Padding(
                              padding: const EdgeInsets.only(left: 8, right: 190),
                              child: Text(
                                'Welcome back 😀',
                                style: TextStyle(
                                  color: Colors.blue[900],
                                  fontSize: 13,
                                  fontWeight: FontWeight.w900,
                                  letterSpacing: 2,
                                ),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 100),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Container(
                            height: 43,
                            width: size.width * .8,
                            child: new TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.next,
                              autofillHints: [AutofillHints.email],
                              controller: _emailField,
                              validator: (input) => !(input?.contains('@') ?? false)
                                  ? "Email id should be valid"
                                  : null,
                              decoration: new InputDecoration(
                                labelText: 'Email',
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: const BorderSide(color: Colors.blue),
                                ),
                                suffixIcon: Icon(
                                  Icons.alternate_email,
                                ),
                                focusedBorder: const OutlineInputBorder(
                                  borderSide:
                                  const BorderSide(color: Colors.blueGrey),
                                ),
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Container(
                            height: 43,
                            width: size.width * .8,
                            child: new TextFormField(
                              keyboardType: TextInputType.visiblePassword,
                              textInputAction: TextInputAction.next,
                              controller: _passwordField,
                              validator: (input) =>
                              (input != null && input.length < 6)
                                  ? "Password should be more than 5 characters"
                                  : null,
                              decoration: new InputDecoration(
                                labelText: 'Password',
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: const BorderSide(color: Colors.blue),
                                ),
                                suffixIcon: IconButton(
                                    icon: Icon(_isObscure
                                        ? Icons.visibility
                                        : Icons.visibility_off),
                                    onPressed: () {
                                      setState(() {
                                        _isObscure = !_isObscure;
                                      });
                                    }),
                                prefixIcon: Icon(
                                  Icons.lock_outline_rounded,
                                ),
                                focusedBorder: const OutlineInputBorder(
                                  borderSide:
                                  const BorderSide(color: Colors.blueGrey),
                                ),
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: 8),
                        Padding(
                          padding: const EdgeInsets.only(left: 190),
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 10,
                              fontWeight: FontWeight.w900,
                              letterSpacing: 1,
                            ),
                          ),
                        ),

                        SizedBox(height: 30),
                        Center(
                          child: ElevatedButton.icon(
                            onPressed: () async {
                              String email = _emailField.text.trim();
                              String password = _passwordField.text.trim();
                              LoginBody loginBody = LoginBody(
                                  email: email, password: password);
                              var provider = Provider.of<LoginDataClass>(context, listen: false);
                              await provider.postLoginData(loginBody);
                              if (provider.isBack) {
                                print('Login successful');
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(builder: (context) =>  Navigationbar()),
                                );
                              }else
                              {
                                print('Confession');
                              }
                            },
                            label: const Text('Login'),
                            icon: const Icon(Icons.input_rounded),
                          ),
                        ),
                        SizedBox(height: 50),
                        Padding(
                          padding: const EdgeInsets.only(left: 16, right: 16),
                          child: Container(
                            height: 50,
                            width: size.width * 1,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(
                                width: 1.0, color: Colors.blue,
                              ),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  topRight: Radius.circular(12),
                                  bottomLeft: Radius.circular(12),
                                  bottomRight: Radius.circular(12)),
                            ),
                            child: Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'First time using ArbitEx?',
                                    style: TextStyle(
                                      color: Colors.blue[900],
                                      fontSize: 10,
                                      fontWeight: FontWeight.w900,
                                      letterSpacing: 1,
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) =>  Signup()),
                                      );
                                    },
                                    child: Text(
                                      'Register',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w900,
                                        letterSpacing: 2,
                                        backgroundColor: Colors.blue[400],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 50),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }),);
  }
}