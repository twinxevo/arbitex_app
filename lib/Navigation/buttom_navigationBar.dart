import 'package:arbitex/Pages/profile.dart';
import 'package:arbitex/Pages/wallet.dart';
import 'package:arbitex/Pages/home.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../arb_login.dart';
import '../arb_onboarding.dart';
import '../arb_settings.dart';
import '../arb_home_trade.dart';

class Navigationbar extends StatefulWidget {
  const Navigationbar({Key? key}) : super(key: key);

  @override
  _NavigationbarState createState() => _NavigationbarState();
}

class _NavigationbarState extends State<Navigationbar> {
  int currentPage = 1;
  final screens = [
    Profile(),
    Home(),
    WalletPage(),
  ];
  @override
  Widget build(BuildContext context) {
    final items = <Widget>[

      Icon(Icons.people, size: 30),
      Icon(Icons.home, size: 30),
      Icon(Icons.account_balance_wallet_outlined, size: 30),

    ];
    return SafeArea(
      top: false,
      child: Scaffold(
        extendBody: true,
        body: IndexedStack(
          index: currentPage,
          children: screens,
        ),

        bottomNavigationBar: CurvedNavigationBar(
          index: currentPage,
          buttonBackgroundColor: Colors.blue[500],
          backgroundColor: Colors.transparent,
          height: 60,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(microseconds: 1000),
          //type: BottomNavigationBarType.shifting,
          //selectedItemColor: Colors.blue,
          //unselectedItemColor: Colors.white,
          // selectedFontSize: 15,
          // showUnselectedLabels: false,
          // currentIndex: currentPage,
          onTap: (page) => setState(() => currentPage = page),
          items: items,
          // items: [
          //   BottomNavigationBarItem(
          //     icon: Icon(Icons.home),
          //     label: 'Home',
          //     backgroundColor: Colors.blue,
          //   ),
          //   BottomNavigationBarItem(
          //     icon: Icon(Icons.account_balance_wallet_outlined),
          //     label: 'Wallet',
          //     backgroundColor: Colors.blue,
          //   ),
          //   BottomNavigationBarItem(
          //     icon: Icon(Icons.people),
          //     label: 'Profile',
          //     backgroundColor: Colors.blue,
          //   ),
          // ],
        ),
      ),
    );
  }
}
