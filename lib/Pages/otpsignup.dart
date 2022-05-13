import 'package:arbitex/Navigation/buttom_navigationBar.dart';
import 'package:arbitex/Pages/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';

import '../Navigation/shared_preferences.dart';
import '../api_service/otp_data_class.dart';
import '../models/otp_model.dart';

class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  _OtpState createState() => _OtpState();
}

TextEditingController _emailField = TextEditingController();
TextEditingController _otpField = TextEditingController();

class _OtpState extends State<Otp> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Consumer<OtpDataClass>(builder: (context, data, child) {
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
          children: <Widget>[
              SingleChildScrollView(
                child: Column(
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Container(
                          child: Image.asset(
                              'assets/otp.png'),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                topRight: Radius.circular(12),
                                bottomLeft: Radius.circular(12),
                                bottomRight: Radius.circular(12)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Verification',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          backgroundColor: Colors.blue[900],
                          fontWeight: FontWeight.w900),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Enter the OTP sent to your e-mail',
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.orange,
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(height: 50),
                    Container(
                      height: 43,
                      width: size.width * .8,
                      child: new TextFormField(
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.next,
                        controller: _otpField,
                        obscureText: true,
                        decoration: new InputDecoration(
                          enabledBorder: const OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.blue),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.blueGrey),
                          ),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () async{
                          //Future<void> async; {
                        String email = await SharedPrefrence().getEmail();
                          //String email = signupEmail.text.trim();
                          String verificationCode = _otpField.text.trim();
                          OtpBody otpBody = OtpBody(
                              email: email, verificationCode: verificationCode);
                          var provider = Provider.of<OtpDataClass>(context, listen: false);
                          await provider.postOtpData(otpBody);
                          if (provider.isBack) {
                            print('Login successful');
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>  Login()),
                            );
                          }else
                          {
                            print('Confession');
                          }

                          //}
                      },
                      child: Text(
                        'Verify',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    SizedBox(height: 30),
                  ],
                ),
              ),
          ],
        ),
            );
      }),);
  }
}
