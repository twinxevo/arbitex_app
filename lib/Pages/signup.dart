import 'package:arbitex/Pages/otpsignup.dart';
import 'package:arbitex/Pages/login.dart';
//import 'package:arbitex/arb_login.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../Navigation/buttom_navigationBar.dart';
import '../Navigation/shared_preferences.dart';
import '../api_service/signup_data_class.dart';
import '../models/otp_model.dart';
import '../models/signup_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

TextEditingController _emailField = TextEditingController();
TextEditingController _nameField = TextEditingController();
TextEditingController _usernameField = TextEditingController();
TextEditingController _passwordField = TextEditingController();
TextEditingController _confirmpasswordField = TextEditingController();
TextEditingController _otpField = TextEditingController();
String verificationCode = _otpField.text.trim();

class _SignupState extends State<Signup> {
  bool _isObscure = true;
  bool _isLoading = false;

  @override

  void dispose(){
    _emailField.dispose();
    _nameField.dispose();
    _usernameField.dispose();
    _passwordField.dispose();
    _confirmpasswordField.dispose();

    super.dispose();
  }

  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      //backgroundColor: Colors.blue[200],
      body: Consumer<DataClass>(builder: (context, data, child) {
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
        //child
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
                                'Sign Up',
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
                                'User Registration 📂',
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
                              validator: (input) =>
                              !(input?.contains('@') ?? false)
                                  ? "Email id should be valid"
                                  : null,
                              decoration: new InputDecoration(
                                labelText: 'Email',
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.blue),
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
                              keyboardType: TextInputType.name,
                              textInputAction: TextInputAction.next,
                              controller: _nameField,
                              // validator: (input) => !(input?.contains('@') ?? false)
                              //     ? "Email id should be valid"
                              //     : null,
                              decoration: new InputDecoration(
                                labelText: 'Full Name',
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.blue),
                                ),
                                suffixIcon: Icon(
                                  Icons.person,
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
                              keyboardType: TextInputType.text,
                              textInputAction: TextInputAction.next,
                              controller: _usernameField,
                              // validator: (input) => !(input?.contains('@') ?? false)
                              //     ? "Email id should be valid"
                              //     : null,
                              decoration: new InputDecoration(
                                labelText: 'Username',
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.blue),
                                ),
                                suffixIcon: Icon(
                                  Icons.person_search_sharp,
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
                                  borderSide: const BorderSide(
                                      color: Colors.blue),
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
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Container(
                            height: 43,
                            width: size.width * .8,
                            child: new TextFormField(
                              keyboardType: TextInputType.visiblePassword,
                              textInputAction: TextInputAction.next,
                              controller: _confirmpasswordField,
                              validator: (input) =>
                              (input != null && input.length < 6)
                                  ? "Password should be more than 5 characters"
                                  : null,
                              decoration: new InputDecoration(
                                labelText: 'Confirm Password',
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.blue),
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
                        SizedBox(height: 30),
                        Center(
                          child: ElevatedButton.icon(
                            onPressed: () async {
                              //Future<void> async; {
                                String email = _emailField.text.trim();
                                String fullName = _nameField.text.trim();
                                String username = _usernameField.text.trim();
                                String password = _passwordField.text.trim();
                                String confirmpassword = _confirmpasswordField.text.trim();
                                SignupBody signUpBody = SignupBody(
                                    email: email, fullName: fullName, username: username, password: password, confirmPassword: confirmpassword);
                                var provider = Provider.of<DataClass>(context, listen: false);
                                await provider.postData(signUpBody);
                                SharedPrefrence().setEmail(email);
                                if (provider.isBack) {
                                  print('Login successful');
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) =>  Otp()),
                                  );
                                }else
                                  {
                                    print('Confession');
                                  }

                                // SharedPreferences prefs = await SharedPreferences.getInstance();
                                // prefs.setString('_email', email);
                                //late String? _email;
                                // setState(() {
                                //   _email = (prefs.getString('email'));
                                // });

                              //}
                            },
                            label: const Text('Continue'),
                            icon: const Icon(Icons.input_rounded),
                          ),
                        ),

                        SizedBox(height: 30),
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
                                    'ArbitEx User?',
                                    style: TextStyle(
                                      color: Colors.black,
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
                                        MaterialPageRoute(builder: (context) =>  Login()),
                                      );
                                    },
                                    child: Text(
                                      'Login',
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
