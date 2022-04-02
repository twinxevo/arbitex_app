import 'package:arbitex/Pages/arb_login.dart';
import 'package:arbitex/Pages/arb_onboarding.dart';
import 'package:arbitex/arb_settings.dart';
import 'package:flutter/material.dart';


class HomeTrade extends StatefulWidget {
  const HomeTrade({Key? key}) : super(key: key);

  @override
  _HomeTradeState createState() => _HomeTradeState();
}

class _HomeTradeState extends State<HomeTrade> {
  double _currentSliderValue = 0;
  double _usdBalance = 5350.67;
  //     int currentPage = 0;
  // final screens = [
  //   HomeTrade(),
  //   Login(),
  //   ArbOnboarding(),
  //   ArbSettings(),
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 8),
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: <Widget>[
            //App bar
            Container(
              margin: EdgeInsets.only(left: 16, right: 16, top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                      onTap: () {
                      },
                      child: Icon(
                        Icons.menu_rounded,
                        color: Colors.lightBlueAccent,
                      )),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),

            //Card part

            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'H e l l o   😉',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '[ NAME ]',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),

            Column(
              children: [
                Stack(
                  children: <Widget>[
                    Padding(
                      padding:
                      const EdgeInsets.only(left: 16, right: 16, top: 20),
                      child: Container(
                        height: 250,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xffe6fbff),
                        ),
                        //con
                        // Container holding $
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(25, 70, 330, 70),
                          child: Row(
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.blue,
                                ),
                                child: Center(
                                  child: Text(
                                    '\$',
                                    style: TextStyle(
                                        fontSize: 70.0,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                              SizedBox(width: 50),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  child: Column(
                                    children: [
                                      Text(
                                        '$_usdBalance',
                                        style: TextStyle(
                                            fontSize: 40.0,
                                            fontWeight: FontWeight.w900,
                                            color: Colors.black),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        '0.0000214816 BTC',
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.black),
                                      ),
                                    ],
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
              ],
            ),

            SizedBox(height: 20),

            Column(
              children: [
                Text(
                  'Investment Amount',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                Slider(
                    value: _currentSliderValue,
                    min: 0,
                    max: 100,
                    divisions: 4,
                    label: '$_currentSliderValue%',
                    inactiveColor: Colors.grey,
                    thumbColor: Colors.lightBlueAccent[100],
                    onChanged: (value) {
                      setState(() {
                        _currentSliderValue = value;
                      });
                    }),
              ],
            ),

            SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Stack(
                children: <Widget>[
                  Container(
                    height: 500,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color(0xffe6fbff),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 50, top: 30),
                      // child: Column(
                      //   children: <Widget>[
                      child: ListView(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //Container(
                              //child:
                              Padding(
                                padding: const EdgeInsets.only(left: 50),
                                child: Text(
                                  'Difference: \$ 180.00',
                                  style: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.w600),
                                ),
                              ),
                              //),
                              InkWell(
                                onTap: (){
                                  print('successful');
                                },
                                child: Center(
                                  child: Text(
                                    'Buy - Binance \$44,900\nSell - Houbi \$45,080',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                              ),

                              SizedBox(height: 20),

                              Padding(
                                padding: const EdgeInsets.only(left: 50),
                                child: Text(
                                  'Difference: \$ 400.00',
                                  style: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.w600),
                                ),
                              ),
                              //),
                              InkWell(
                                onTap: () {},
                                child: Center(
                                  child: Text(
                                    'Buy - Hotbit \$44,500\nSell - Binance \$44,900',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                              ),

                              SizedBox(height: 20),

                              Padding(
                                padding: const EdgeInsets.only(left: 50),
                                child: Text(
                                  'Difference: \$ 180.00',
                                  style: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.w600),
                                ),
                              ),
                              //),
                              InkWell(
                                onTap: () {},
                                child: Center(
                                  child: Text(
                                    'Buy - Binance \$44,900\nSell - Houbi \$45,080',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                              ),

                              SizedBox(height: 20),

                              Padding(
                                padding: const EdgeInsets.only(left: 50),
                                child: Text(
                                  'Difference: \$ 250.00',
                                  style: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.w600),
                                ),
                              ),
                              //),
                              InkWell(
                                onTap: () {},
                                child: Center(
                                  child: Text(
                                    'Buy - Kucoin \$44,500\nSell - Hitbtc \$44,750',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                              ),

                              SizedBox(height: 20),

                              Padding(
                                padding: const EdgeInsets.only(left: 50),
                                child: Text(
                                  'Difference: \$ 400.00',
                                  style: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.w600),
                                ),
                              ),
                              //),
                              InkWell(
                                onTap: () {},
                                child: Center(
                                  child: Text(
                                    'Buy - Hotbit \$44,500\nSell - Binance \$44,900',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      //   ],
                      // ),
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
}
