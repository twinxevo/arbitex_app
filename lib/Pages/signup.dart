import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

TextEditingController _emailField = TextEditingController();
TextEditingController _nameField = TextEditingController();
TextEditingController _mobileField = TextEditingController();
TextEditingController _passwordField = TextEditingController();
TextEditingController _confirmpasswordField = TextEditingController();

class _SignupState extends State<Signup> {
  bool _isObscure = true;
  bool _isLoading = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      //backgroundColor: Colors.blue[200],
      body: Stack(
        children: [
          // Container(
          //   height: 2000,
          //   width: double.infinity,
          //   decoration: const BoxDecoration(
          //     image: DecorationImage(
          //       image: AssetImage("assets/Sign.jpg"),
          //       fit: BoxFit.cover,
          //       colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken)
          //     ),
          //   ),
          //
          // ),
          SingleChildScrollView(
            child: Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    SizedBox(height: 320),
                    Padding(
                      padding: const EdgeInsets.only(right: 280),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 2,
                          backgroundColor: Colors.blue[900],
                        ),
                      ),
                    ),
                    SizedBox(height: 50),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        height: 43,
                        width: size.width * .8,
                        child: new TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
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
                    SizedBox(height: 20),
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
                              borderSide: const BorderSide(color: Colors.blue),
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
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        height: 43,
                        width: size.width * .8,
                        child: new TextFormField(
                          keyboardType: TextInputType.phone,
                          textInputAction: TextInputAction.next,
                          controller: _mobileField,
                          // validator: (input) => !(input?.contains('@') ?? false)
                          //     ? "Email id should be valid"
                          //     : null,
                          decoration: new InputDecoration(
                            labelText: 'Mobile Number',
                            enabledBorder: const OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.blue),
                            ),
                            suffixIcon: Icon(
                              Icons.phone_iphone_rounded,
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
                    SizedBox(height: 20),
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
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        height: 43,
                        width: size.width * .8,
                        child: new TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          textInputAction: TextInputAction.done,
                          controller: _confirmpasswordField,
                          validator: (input) =>
                              (input != null && input.length < 6)
                                  ? "Password should be more than 5 characters"
                                  : null,
                          decoration: new InputDecoration(
                            labelText: 'Confirm Password',
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
                    SizedBox(height: 40),
                    Center(
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        label: const Text('Continue'),
                        icon: const Icon(Icons.input_rounded),
                      ),
                    ),

                    SizedBox(height: 20),
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Already have an account with ArbitEx?',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w900,
                                letterSpacing: 1,
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.w900,
                                letterSpacing: 2,
                                backgroundColor: Colors.blue[900],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
