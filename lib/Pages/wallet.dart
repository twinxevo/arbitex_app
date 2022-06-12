import 'package:arbitex/Pages/btc_withdrawal.dart';
import 'package:arbitex/Pages/ltc_withdrawal.dart';
import 'package:arbitex/Pages/usdt_withdrawal.dart';
import 'package:arbitex/Pages/xml_withdrawal.dart';
import 'package:arbitex/Pages/xrp_withdrawal.dart';
import 'package:arbitex/arb_login.dart';
import 'package:arbitex/arb_onboarding.dart';
import 'package:arbitex/arb_settings.dart';
import 'package:flutter/material.dart';
import 'package:clipboard/clipboard.dart';
import 'package:fluttertoast/fluttertoast.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  _WalletPageState createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  final currency_dd = ['EUR', 'GBP', 'NGN', 'USD'];
  String? value;
  var currencies;
  String walletAddress = '0x64373ur9hnfyuyrewy2rur9344rhdhfh48fh';

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    DropdownMenuItem<String> buildMenuItem(String currencies) =>
        DropdownMenuItem(
          value: currencies,
          child: Text(
            currencies,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blue[100]),
          ),
        );
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: size.height * 1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(0),
                    bottomLeft: Radius.circular(0)),
                color: Colors.blue[900],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 65,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16),
                                    child: Text(
                                      'W a l l e t   💼',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),

                                  // Padding(
                                  //   padding: const EdgeInsets.only(left: 16),
                                  //   child: Text('[NAME]',
                                  //     style: TextStyle(
                                  //         color: Colors.white,
                                  //         fontSize: 15,
                                  //         fontWeight: FontWeight.w600
                                  //     ),),
                                  // ),
                                ],
                              ),
                              SizedBox(height: 2.5),
                              DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                    value: currencies,
                                    icon: Icon(Icons.arrow_drop_down,
                                        color: Colors.white),
                                    items:
                                        currency_dd.map(buildMenuItem).toList(),
                                    onChanged: (value) {
                                      //=>
                                      setState(() {
                                        currencies = value;
                                        //=> this.value = value
                                      });
                                      print('$currencies');
                                    }),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Text(
                              'T o t a l  B a l a n c e',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                            SizedBox(height: 3),
                            Text(
                              '$currencies 5400',
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 60),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: ListView(
                        children: [
                          //child:
                          Container(
                            //height: MediaQuery.of(context).size.height,
                            height: 800,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.grey[100],
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 16, right: 16, top: 10),
                                  child: Container(
                                    height: 90,
                                    width: 210,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(12),
                                          topRight: Radius.circular(12),
                                          bottomLeft: Radius.circular(12),
                                          bottomRight: Radius.circular(12)),
                                    ),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5, top: 7, bottom: 5),
                                              child: GestureDetector(
                                                onTap: () {
                                                  print('Withdrawal successful');
                                                  withdrawalBottomSheet();
                                                },
                                                child: Container(
                                                  height: 70,
                                                  width: 100,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                            topLeft: Radius
                                                                .circular(8),
                                                            topRight:
                                                                Radius.circular(
                                                                    0),
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    12),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    0)),
                                                  ),
                                                  child: Center(
                                                    child: Column(
                                                      children: [
                                                        Icon(
                                                          Icons.send_outlined,
                                                          color: Colors.blue[900],
                                                          size: 30,
                                                        ),
                                                        SizedBox(height: 5),
                                                        Text(
                                                          'Withdraw',
                                                          style: TextStyle(
                                                            fontSize: 15,
                                                            color:
                                                                Colors.blue[900],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 7, bottom: 5),
                                              child: GestureDetector(
                                                onTap: () {
                                                  print('Displaying Transaction history');
                                                },
                                                child: Container(
                                                  height: 70,
                                                  width: 100,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                            topLeft: Radius
                                                                .circular(0),
                                                            topRight:
                                                                Radius.circular(
                                                                    12),
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    0),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    12)),
                                                  ),
                                                  child: Center(
                                                    child: Column(
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .history_edu_rounded,
                                                          color: Colors.blue[900],
                                                          size: 30,
                                                        ),
                                                        SizedBox(height: 5),
                                                        Text(
                                                          'History',
                                                          style: TextStyle(
                                                            fontSize: 15,
                                                            color:
                                                                Colors.blue[900],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 80),
                                Text(
                                  'Available Balance',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.blue[900],
                                  ),
                                ),
                                SizedBox(height: 10),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  child: Container(
                                    height: 75,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(12),
                                          topRight: Radius.circular(12),
                                          bottomLeft: Radius.circular(12),
                                          bottomRight: Radius.circular(12)),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Expanded(
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.attach_money_sharp,
                                                  color: Colors.blue[900],
                                                  size: 25,
                                                ),
                                                Text(
                                                  '0.00',
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.blue[900],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                              child: Text(
                                            'Currently Unavailable',
                                            style: TextStyle(fontSize: 10),
                                          )),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 40),
                                Text(
                                  'Cryptocurrency Balance',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.blue[900],
                                  ),
                                ),
                                SizedBox(height: 10),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  child: InkWell(
                                    onTap: () {
                                      showModalBottomSheet(
                                        context: context,
                                        backgroundColor: Colors.transparent,
                                        builder: (context) => Container(
                                          height: size.height * 5,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(25),
                                                  topLeft:
                                                      Radius.circular(25))),
                                          child: SingleChildScrollView(
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 8),
                                                  child: Container(
                                                    height: 5,
                                                    width: 30,
                                                    decoration: BoxDecoration(
                                                      color: Colors.blue[900],
                                                      borderRadius:
                                                          BorderRadius.only(
                                                              topLeft: Radius
                                                                  .circular(12),
                                                              topRight: Radius
                                                                  .circular(12),
                                                              bottomLeft: Radius
                                                                  .circular(12),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          12)),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Text('BTC Deposit',
                                                      style: TextStyle(
                                                          fontSize: 25,
                                                          color:
                                                              Colors.blue[900],
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                ),
                                                SizedBox(height: 50),
                                                Container(
                                                  // height: 150,
                                                  // width: 150,
                                                  child: Image.asset(
                                                      'assets/wallet.png'),
                                                ),
                                                SizedBox(height: 20),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10, right: 10),
                                                  child: Container(
                                                    height: 50,
                                                    width: MediaQuery.of(context).size.width,
                                                    decoration: const BoxDecoration(
                                                      color: Colors.grey,
                                                      borderRadius: BorderRadius.only(
                                                          topLeft: Radius.circular(12),
                                                          topRight: Radius.circular(12),
                                                          bottomLeft: Radius.circular(12),
                                                          bottomRight: Radius.circular(12)),
                                                    ),
                                                    child: Padding(
                                                      padding: const EdgeInsets.only(left: 18, right: 15),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(left:12.0),
                                                            child: Text(
                                                              '$walletAddress',
                                                              style: TextStyle(
                                                                fontSize: 12,
                                                                fontWeight: FontWeight.w500,
                                                                color: Colors.black,
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(width: 10),
                                                          InkWell(
                                                            onTap: () async {
                                                              await FlutterClipboard.copy(walletAddress);

                                                              ScaffoldMessenger.of(context).showSnackBar(
                                                                      SnackBar(content: Text(
                                                                    'Wallet Address copied'
                                                                      ),
                                                                duration: Duration(seconds: 120),
                                                                action: SnackBarAction(
                                                                  label: 'Dismiss',
                                                                  onPressed: () {},
                                                                ),
                                                              ));
                                                            },
                                                            child: Padding(
                                                              padding: const EdgeInsets.only(right:10.0),
                                                              child: Icon(
                                                                Icons
                                                                    .content_copy_rounded,
                                                                color: Colors
                                                                    .blue[900],
                                                                size: 20,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: 10),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      height: 75,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(12),
                                            topRight: Radius.circular(12),
                                            bottomLeft: Radius.circular(12),
                                            bottomRight: Radius.circular(12)),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10),
                                              child: Expanded(
                                                child: Row(
                                                  children: [
                                                    //Icon(Icons.attach_money_sharp, color: Colors.blue[900], size: 40,),
                                                    CircleAvatar(
                                                        radius: 12,
                                                        backgroundImage: AssetImage("assets/BTC.png")
                                                    ),
                                                    SizedBox(width: 10),
                                                    Text(
                                                      'BTC',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.blue[900],
                                                      ),
                                                    ),
                                                    SizedBox(width: 5),
                                                    Text(
                                                      '0.00',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.blue[900],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                                child: Text(
                                              'Currently Unavailable',
                                              style: TextStyle(fontSize: 10),
                                            )),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  child: InkWell(
                                    onTap: () {
                                      showModalBottomSheet(
                                        context: context,
                                        backgroundColor: Colors.transparent,
                                        builder: (context) => Container(
                                          height: size.height * 5,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(25),
                                                  topLeft:
                                                      Radius.circular(25))),
                                          child: SingleChildScrollView(
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 8),
                                                  child: Container(
                                                    height: 5,
                                                    width: 30,
                                                    decoration: BoxDecoration(
                                                      color: Colors.blue[900],
                                                      borderRadius:
                                                          BorderRadius.only(
                                                              topLeft: Radius
                                                                  .circular(12),
                                                              topRight: Radius
                                                                  .circular(12),
                                                              bottomLeft: Radius
                                                                  .circular(12),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          12)),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Text('USDT Deposit',
                                                      style: TextStyle(
                                                          fontSize: 25,
                                                          color:
                                                              Colors.blue[900],
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                ),
                                                SizedBox(height: 50),
                                                Container(
                                                  // height: 150,
                                                  // width: 150,
                                                  child: Image.asset(
                                                      'assets/wallet.png'),
                                                ),
                                                SizedBox(height: 20),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10, right: 10),
                                                  child: Container(
                                                    height: 50,
                                                    width: MediaQuery.of(context).size.width,
                                                    decoration: const BoxDecoration(
                                                      color: Colors.grey,
                                                      borderRadius: BorderRadius.only(
                                                          topLeft: Radius.circular(12),
                                                          topRight: Radius.circular(12),
                                                          bottomLeft: Radius.circular(12),
                                                          bottomRight: Radius.circular(12)),
                                                    ),
                                                    child: Padding(
                                                      padding: const EdgeInsets.only(left:18.0, right: 15),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(left:12.0),
                                                            child: Text(
                                                              '$walletAddress',
                                                              style: TextStyle(
                                                                fontSize: 12,
                                                                fontWeight: FontWeight.w500,
                                                                color: Colors.black,
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(width: 10),
                                                          InkWell(
                                                            onTap: () async {
                                                              await FlutterClipboard.copy(walletAddress);

                                                              ScaffoldMessenger.of(context).showSnackBar(
                                                                  SnackBar(content: Text(
                                                                      'Wallet Address copied'
                                                                  ),
                                                                    duration: Duration(seconds: 120),
                                                                    action: SnackBarAction(
                                                                      label: 'Dismiss',
                                                                      onPressed: () {},
                                                                    ),
                                                                  ));
                                                            },
                                                            child: Padding(
                                                              padding: const EdgeInsets.only(right:10.0),
                                                              child: Icon(
                                                                Icons
                                                                    .content_copy_rounded,
                                                                color: Colors
                                                                    .blue[900],
                                                                size: 20,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      height: 75,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(12),
                                            topRight: Radius.circular(12),
                                            bottomLeft: Radius.circular(12),
                                            bottomRight: Radius.circular(12)),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10),
                                              child: Expanded(
                                                child: Row(
                                                  children: [
                                                    //Icon(Icons.attach_money_sharp, color: Colors.blue[900], size: 40,),
                                                    CircleAvatar(
                                                        radius: 12,
                                                        backgroundImage: AssetImage("assets/USDT.png")
                                                    ),
                                                    SizedBox(width: 10),
                                                    Text(
                                                      'USDT',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.blue[900],
                                                      ),
                                                    ),
                                                    SizedBox(width: 5),
                                                    Text(
                                                      '0.00',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.blue[900],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                                child: Text(
                                              'Currently Unavailable',
                                              style: TextStyle(fontSize: 10),
                                            )),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  child: InkWell(
                                    onTap: () {
                                      showModalBottomSheet(
                                        context: context,
                                        backgroundColor: Colors.transparent,
                                        builder: (context) => Container(
                                          height: size.height * 5,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(25),
                                                  topLeft:
                                                      Radius.circular(25))),
                                          child: SingleChildScrollView(
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 8),
                                                  child: Container(
                                                    height: 5,
                                                    width: 30,
                                                    decoration: BoxDecoration(
                                                      color: Colors.blue[900],
                                                      borderRadius:
                                                          BorderRadius.only(
                                                              topLeft: Radius
                                                                  .circular(12),
                                                              topRight: Radius
                                                                  .circular(12),
                                                              bottomLeft: Radius
                                                                  .circular(12),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          12)),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Text('XRP Deposit',
                                                      style: TextStyle(
                                                          fontSize: 25,
                                                          color:
                                                              Colors.blue[900],
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                ),
                                                SizedBox(height: 50),
                                                Container(
                                                  // height: 150,
                                                  // width: 150,
                                                  child: Image.asset(
                                                      'assets/wallet.png'),
                                                ),
                                                SizedBox(height: 20),
                                                Padding(
                                                  padding:
                                                  const EdgeInsets.only(
                                                      left: 10, right: 10),
                                                  child: Container(
                                                    height: 50,
                                                    width: MediaQuery.of(context).size.width,
                                                    decoration: const BoxDecoration(
                                                      color: Colors.grey,
                                                      borderRadius: BorderRadius.only(
                                                          topLeft: Radius.circular(12),
                                                          topRight: Radius.circular(12),
                                                          bottomLeft: Radius.circular(12),
                                                          bottomRight: Radius.circular(12)),
                                                    ),
                                                    child: Padding(
                                                      padding: const EdgeInsets.only(left:18.0, right: 15),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(left:12.0),
                                                            child: Text(
                                                              '$walletAddress',
                                                              style: TextStyle(
                                                                fontSize: 12,
                                                                fontWeight: FontWeight.w500,
                                                                color: Colors.black,
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(width: 10),
                                                          InkWell(
                                                            onTap: () async {
                                                              await FlutterClipboard.copy(walletAddress);

                                                              ScaffoldMessenger.of(context).showSnackBar(
                                                                  SnackBar(content: Text(
                                                                      'Wallet Address copied'
                                                                  ),
                                                                    duration: Duration(seconds: 120),
                                                                    action: SnackBarAction(
                                                                      label: 'Dismiss',
                                                                      onPressed: () {},
                                                                    ),
                                                                  ));
                                                            },
                                                            child: Padding(
                                                              padding: const EdgeInsets.only(right:10.0),
                                                              child: Icon(
                                                                Icons
                                                                    .content_copy_rounded,
                                                                color: Colors
                                                                    .blue[900],
                                                                size: 20,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      height: 75,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(12),
                                            topRight: Radius.circular(12),
                                            bottomLeft: Radius.circular(12),
                                            bottomRight: Radius.circular(12)),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10),
                                              child: Expanded(
                                                child: Row(
                                                  children: [
                                                    //Icon(Icons.attach_money_sharp, color: Colors.blue[900], size: 40,),
                                                    CircleAvatar(
                                                        radius: 12,
                                                        backgroundImage: AssetImage("assets/XRP.png")
                                                    ),
                                                    SizedBox(width: 10),
                                                    Text(
                                                      'XRP',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.blue[900],
                                                      ),
                                                    ),
                                                    SizedBox(width: 5),
                                                    Text(
                                                      '0.00',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.blue[900],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                                child: Text(
                                              'Currently Unavailable',
                                              style: TextStyle(fontSize: 10),
                                            )),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  child: InkWell(
                                    onTap: () {
                                      showModalBottomSheet(
                                        context: context,
                                        backgroundColor: Colors.transparent,
                                        builder: (context) => Container(
                                          height: size.height * 5,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(25),
                                                  topLeft:
                                                      Radius.circular(25))),
                                          child: SingleChildScrollView(
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 8),
                                                  child: Container(
                                                    height: 5,
                                                    width: 30,
                                                    decoration: BoxDecoration(
                                                      color: Colors.blue[900],
                                                      borderRadius:
                                                          BorderRadius.only(
                                                              topLeft: Radius
                                                                  .circular(12),
                                                              topRight: Radius
                                                                  .circular(12),
                                                              bottomLeft: Radius
                                                                  .circular(12),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          12)),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Text('LTC Deposit',
                                                      style: TextStyle(
                                                          fontSize: 25,
                                                          color:
                                                              Colors.blue[900],
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                ),
                                                SizedBox(height: 50),
                                                Container(
                                                  // height: 150,
                                                  // width: 150,
                                                  child: Image.asset(
                                                      'assets/wallet.png'),
                                                ),
                                                SizedBox(height: 20),
                                                Padding(
                                                  padding:
                                                  const EdgeInsets.only(
                                                      left: 10, right: 10),
                                                  child: Container(
                                                    height: 50,
                                                    width: MediaQuery.of(context).size.width,
                                                    decoration: const BoxDecoration(
                                                      color: Colors.grey,
                                                      borderRadius: BorderRadius.only(
                                                          topLeft: Radius.circular(12),
                                                          topRight: Radius.circular(12),
                                                          bottomLeft: Radius.circular(12),
                                                          bottomRight: Radius.circular(12)),
                                                    ),
                                                    child: Padding(
                                                      padding: const EdgeInsets.only(left:18.0, right: 15),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(left:12.0),
                                                            child: Text(
                                                              '$walletAddress',
                                                              style: TextStyle(
                                                                fontSize: 12,
                                                                fontWeight: FontWeight.w500,
                                                                color: Colors.black,
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(width: 10),
                                                          InkWell(
                                                            onTap: () async {
                                                              await FlutterClipboard.copy(walletAddress);

                                                              ScaffoldMessenger.of(context).showSnackBar(
                                                                  SnackBar(content: Text(
                                                                      'Wallet Address copied'
                                                                  ),
                                                                    duration: Duration(seconds: 120),
                                                                    action: SnackBarAction(
                                                                      label: 'Dismiss',
                                                                      onPressed: () {},
                                                                    ),
                                                                  ));
                                                            },
                                                            child: Padding(
                                                              padding: const EdgeInsets.only(right:10.0),
                                                              child: Icon(
                                                                Icons
                                                                    .content_copy_rounded,
                                                                color: Colors
                                                                    .blue[900],
                                                                size: 20,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      height: 75,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(12),
                                            topRight: Radius.circular(12),
                                            bottomLeft: Radius.circular(12),
                                            bottomRight: Radius.circular(12)),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10),
                                              child: Expanded(
                                                child: Row(
                                                  children: [
                                                    //Icon(Icons.attach_money_sharp, color: Colors.blue[900], size: 40,),
                                                    CircleAvatar(
                                                        radius: 12,
                                                        backgroundImage: AssetImage("assets/LTC.png")
                                                    ),
                                                    SizedBox(width: 10),
                                                    Text(
                                                      'LTC',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.blue[900],
                                                      ),
                                                    ),
                                                    SizedBox(width: 5),
                                                    Text(
                                                      '0.00',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.blue[900],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                                child: Text(
                                              'Currently Unavailable',
                                              style: TextStyle(fontSize: 10),
                                            )),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  child: InkWell(
                                    onTap: () {
                                      showModalBottomSheet(
                                        context: context,
                                        backgroundColor: Colors.transparent,
                                        builder: (context) => Container(
                                          height: size.height * 5,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(25),
                                                  topLeft:
                                                      Radius.circular(25))),
                                          child: SingleChildScrollView(
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 8),
                                                  child: Container(
                                                    height: 5,
                                                    width: 30,
                                                    decoration: BoxDecoration(
                                                      color: Colors.blue[900],
                                                      borderRadius:
                                                          BorderRadius.only(
                                                              topLeft: Radius
                                                                  .circular(12),
                                                              topRight: Radius
                                                                  .circular(12),
                                                              bottomLeft: Radius
                                                                  .circular(12),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          12)),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Text('XML Deposit',
                                                      style: TextStyle(
                                                          fontSize: 25,
                                                          color:
                                                              Colors.blue[900],
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                ),
                                                SizedBox(height: 50),
                                                Container(
                                                  // height: 150,
                                                  // width: 150,
                                                  child: Image.asset(
                                                      'assets/wallet.png'),
                                                ),
                                                SizedBox(height: 20),
                                                Padding(
                                                  padding:
                                                  const EdgeInsets.only(
                                                      left: 10, right: 10),
                                                  child: Container(
                                                    height: 50,
                                                    width: MediaQuery.of(context).size.width,
                                                    decoration: const BoxDecoration(
                                                      color: Colors.grey,
                                                      borderRadius: BorderRadius.only(
                                                          topLeft: Radius.circular(12),
                                                          topRight: Radius.circular(12),
                                                          bottomLeft: Radius.circular(12),
                                                          bottomRight: Radius.circular(12)),
                                                    ),
                                                    child: Padding(
                                                      padding: const EdgeInsets.only(left:18.0, right: 15),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(left:12.0),
                                                            child: Text(
                                                              '$walletAddress',
                                                              style: TextStyle(
                                                                fontSize: 12,
                                                                fontWeight: FontWeight.w500,
                                                                color: Colors.black,
                                                              ),
                                                            ),
                                                          ),
                                                          SizedBox(width: 10),
                                                          InkWell(
                                                            onTap: () async {
                                                              await FlutterClipboard.copy(walletAddress);

                                                              ScaffoldMessenger.of(context).showSnackBar(
                                                                  SnackBar(content: Text(
                                                                      'Wallet Address copied'
                                                                  ),
                                                                    duration: Duration(seconds: 120),
                                                                    action: SnackBarAction(
                                                                      label: 'Dismiss',
                                                                      onPressed: () {},
                                                                    ),
                                                                  ));
                                                            },
                                                            child: Padding(
                                                              padding: const EdgeInsets.only(right:10.0),
                                                              child: Icon(
                                                                Icons
                                                                    .content_copy_rounded,
                                                                color: Colors
                                                                    .blue[900],
                                                                size: 20,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      height: 75,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(12),
                                            topRight: Radius.circular(12),
                                            bottomLeft: Radius.circular(12),
                                            bottomRight: Radius.circular(12)),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10),
                                              child: Expanded(
                                                child: Row(
                                                  children: [
                                                    //Icon(Icons.attach_money_sharp, color: Colors.blue[900], size: 40,),
                                                    CircleAvatar(
                                                        radius: 12,
                                                        backgroundImage: AssetImage("assets/XML.png")
                                                    ),
                                                    SizedBox(width: 10),
                                                    Text(
                                                      'XML',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.blue[900],
                                                      ),
                                                    ),
                                                    SizedBox(width: 5),
                                                    Text(
                                                      '0.00',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.blue[900],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                                child: Text(
                                              'Currently Unavailable',
                                              style: TextStyle(fontSize: 10),
                                            )),
                                          ],
                                        ),
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
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void withdrawalBottomSheet() {
    var size = MediaQuery.of(context).size;
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        height: 300,
        width:
        MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                topLeft: Radius.circular(12))),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                const EdgeInsets.only(top: 8, left: 15),
                child: Text('Select Coin for Withdrawal',
                    style: TextStyle(
                        fontSize: 22,
                        color:
                        Colors.blue[900],
                        fontWeight:
                        FontWeight.bold)),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context,
                      MaterialPageRoute(
                          builder: (context) =>
                              BtcWithdrawal()),);
                  },
                  child: Container(
                    height: 30,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only()),
                    child: Row(
                      children: [
                        CircleAvatar(
                            radius: 20,
                      backgroundImage: AssetImage("assets/BTC.png")
                        ),
                        SizedBox(width: 10),
                        Text('BTC', style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue[900],
                        ),),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context) =>
                              UsdtWithdrawal()),);
                  },
                  child: Container(
                    height: 30,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only()),
                    child: Row(
                      children: [
                        CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage("assets/USDT.png")
                        ),
                        SizedBox(width: 10),
                        Text('USDT', style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue[900],
                        ),),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context) =>
                              XrpWithdrawal()),);
                  },
                  child: Container(
                    height: 30,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only()),
                    child: Row(
                      children: [
                        CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage("assets/XRP.png")
                        ),
                        SizedBox(width: 10),
                        Text('XRP', style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue[900],
                        ),),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context) =>
                              LtcWithdrawal()),);
                  },
                  child: Container(
                    height: 30,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only()),
                    child: Row(
                      children: [
                        CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage("assets/LTC.png")
                        ),
                        SizedBox(width: 10),
                        Text('LTC', style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue[900],
                        ),),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context) =>
                            XmlWithdrawal()),);
                    },
                  child: Container(
                    height: 30,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only()),
                    child: Row(
                      children: [
                        const CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage("assets/XML.png")
                        ),
                        SizedBox(width: 10),
                        Text('XML', style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue[900],
                        ),),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),

            ],
          ),
        ),
      ),
    );
  }
}



