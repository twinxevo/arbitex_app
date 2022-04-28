import 'package:arbitex/Pages/signup.dart';
import 'package:arbitex/Pages/login.dart';
import 'package:arbitex/arb_trades.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'api_service/login_data_class.dart';
import 'api_service/otp_data_class.dart';
//import 'arb_login.dart';
import 'arb_onboarding.dart';
import 'arb_trade.dart';
import 'api_service/signup_data_class.dart';
import 'arb_home_trade.dart';
import 'arb_settings.dart';
import 'arb_traders.dart';
import 'Navigation/buttom_navigationBar.dart';

// void main() {
//   runApp(const MyApp());
// }

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_)=>DataClass()),
    ChangeNotifierProvider(create: (_)=>OtpDataClass()),
    ChangeNotifierProvider(create: (_)=>LoginDataClass()),


  ],
      child:const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: Navigationbar(),
      //home: Signup(),
      home: Login(),
    );
  }
}

