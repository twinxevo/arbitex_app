import 'package:arbitex/arb_trades.dart';
import 'package:flutter/material.dart';

import 'Pages/arb_login.dart';
import 'Pages/arb_onboarding.dart';
import 'Pages/arb_trade.dart';
import 'arb_home_trade.dart';
import 'arb_settings.dart';
import 'arb_traders.dart';
import 'Navigation/buttom_navigationBar.dart';

void main() {
  runApp(const MyApp());
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
      home: Navigationbar(),
    );
  }
}

