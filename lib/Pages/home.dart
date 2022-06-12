import 'package:arbitex/Pages/login.dart';
import 'package:arbitex/Pages/otpsignup.dart';
import 'package:arbitex/Pages/signup.dart';
import 'package:arbitex/api_service/getprofile.dart';
import 'package:arbitex/models/user_details_model.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  bool circular = true;
  UserInfo userDetail = UserInfo(username: '', fullName: '', email: '', userId: '');
  UserDetails userDetails = UserDetails();
  @override
  void initState() {
    getAllDetails();
  }

  double _currentSliderValue = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: size.height * .5,
              //width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30)),
                color: Colors.blue[900],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Container(
                    height: 80,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 16),
                                child: Text(
                                  'H e l l o   😉',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              SizedBox(height: 2.5),
                              Padding(
                                padding: const EdgeInsets.only(left: 16),
                                child: Text(
                                  userDetail.username,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.more_vert_outlined,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          'B a l a n c e',
                          style:
                              TextStyle(fontSize: 15, color: Colors.white),
                        ),
                        SizedBox(height: 3),
                        Text(
                          'USD 5400',
                          style: TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                              fontWeight: FontWeight.w900),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 60),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: SingleChildScrollView(
                        child: Container(
                          //height: MediaQuery.of(context).size.height,
                          height: 800,
                          //height: size.height * 1.0,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(0),
                                topRight: Radius.circular(0),
                                bottomLeft: Radius.circular(16),
                                bottomRight: Radius.circular(16)
                            ),
                            color: Colors.white,
                          ),

                          child: Column(
                            children: [
                              SizedBox(height: 40),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Text(
                                  'What percentage of your capital would you want to invest?',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Colors.blue[900]),
                                ),
                              ),
                              SizedBox(height: 10),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 16, right: 16),
                                child: Slider(
                                    value: _currentSliderValue,
                                    min: 0,
                                    max: 100,
                                    divisions: 4,
                                    label: '$_currentSliderValue%',
                                    inactiveColor: Colors.grey,
                                    thumbColor: Colors.blue[900],
                                    onChanged: (value) {
                                      setState(() {
                                        _currentSliderValue = value;
                                      });
                                    }),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10, right: 10),
                                child: Text(
                                  '$_currentSliderValue of your capital would be invested',
                                  style: TextStyle(
                                      fontSize: 15, fontWeight: FontWeight.w500),
                                ),
                              ),
                              SizedBox(height: 30),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 16, right: 16, top: 5),
                                    child: Container(
                                      height: 100,
                                      width:
                                          MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        color: Colors.blue[900],
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(12),
                                            topRight: Radius.circular(12),
                                            bottomLeft: Radius.circular(12),
                                            bottomRight: Radius.circular(12)
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(16),
                                        child: Column(
                                          children: [
                                            Expanded(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    '% 5',
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white),
                                                  ),

                                                  //SizedBox(width: 5),
                                                  // Text('5',
                                                  //     style: TextStyle(
                                                  //     fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white
                                                  // ),),

                                                  //SizedBox(width: 5),
                                                  Text(
                                                    'Buy - Binance',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors
                                                            .lightGreenAccent),
                                                  ),

                                                  //SizedBox(width: 5),
                                                  Text(
                                                    'Sell - Houbi',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color:
                                                            Colors.redAccent),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Expanded(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'BTC',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white),
                                                  ),

                                                  //SizedBox(width: 53),
                                                  Text(
                                                    '\$ 44900',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors
                                                            .lightGreenAccent),
                                                  ),

                                                  //SizedBox(width: 65),
                                                  Text(
                                                    '\$ 45080',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color:
                                                            Colors.redAccent),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ), //
                                ],
                              ),
                              Column(
                                crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 16, right: 16, top: 7),
                                    child: Container(
                                      height: 100,
                                      width:
                                          MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        color: Colors.blue[900],
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(12),
                                            topRight: Radius.circular(12),
                                            bottomLeft: Radius.circular(12),
                                            bottomRight:
                                                Radius.circular(12)),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(16),
                                        child: Column(
                                          children: [
                                            Expanded(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    '% 5',
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white),
                                                  ),

                                                  //SizedBox(width: 5),
                                                  // Text('5',
                                                  //     style: TextStyle(
                                                  //     fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white
                                                  // ),),

                                                  //SizedBox(width: 5),
                                                  Text(
                                                    'Buy - Binance',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors
                                                            .lightGreenAccent),
                                                  ),

                                                  //SizedBox(width: 5),
                                                  Text(
                                                    'Sell - Houbi',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color:
                                                            Colors.redAccent),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Expanded(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'BTC',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white),
                                                  ),

                                                  //SizedBox(width: 53),
                                                  Text(
                                                    '\$ 44900',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors
                                                            .lightGreenAccent),
                                                  ),

                                                  //SizedBox(width: 65),
                                                  Text(
                                                    '\$ 45080',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color:
                                                            Colors.redAccent),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 16, right: 16, top: 7),
                                    child: Container(
                                      height: 100,
                                      width:
                                          MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        color: Colors.blue[900],
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(12),
                                            topRight: Radius.circular(12),
                                            bottomLeft: Radius.circular(12),
                                            bottomRight: Radius.circular(12)),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(16),
                                        child: Column(
                                          children: [
                                            Expanded(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    '% 5',
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white),
                                                  ),

                                                  //SizedBox(width: 5),
                                                  // Text('5',
                                                  //     style: TextStyle(
                                                  //     fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white
                                                  // ),),

                                                  //SizedBox(width: 5),
                                                  Text(
                                                    'Buy - Binance',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors
                                                            .lightGreenAccent),
                                                  ),

                                                  //SizedBox(width: 5),
                                                  Text(
                                                    'Sell - Houbi',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color:
                                                            Colors.redAccent),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Expanded(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'BTC',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white),
                                                  ),

                                                  //SizedBox(width: 53),
                                                  Text(
                                                    '\$ 44900',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors
                                                            .lightGreenAccent),
                                                  ),

                                                  //SizedBox(width: 65),
                                                  Text(
                                                    '\$ 45080',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color:
                                                            Colors.redAccent),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 16, right: 16, top: 7),
                                    child: Container(
                                      height: 100,
                                      width:
                                          MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        color: Colors.blue[900],
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(12),
                                            topRight: Radius.circular(12),
                                            bottomLeft: Radius.circular(12),
                                            bottomRight: Radius.circular(12)),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(16),
                                        child: Column(
                                          children: [
                                            Expanded(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    '% 5',
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white),
                                                  ),

                                                  //SizedBox(width: 5),
                                                  // Text('5',
                                                  //     style: TextStyle(
                                                  //     fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white
                                                  // ),),

                                                  //SizedBox(width: 5),
                                                  Text(
                                                    'Buy - Binance',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors
                                                            .lightGreenAccent),
                                                  ),

                                                  //SizedBox(width: 5),
                                                  Text(
                                                    'Sell - Houbi',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color:
                                                            Colors.redAccent),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Expanded(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'BTC',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white),
                                                  ),

                                                  //SizedBox(width: 53),
                                                  Text(
                                                    '\$ 44900',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors
                                                            .lightGreenAccent),
                                                  ),

                                                  //SizedBox(width: 65),
                                                  Text(
                                                    '\$ 45080',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color:
                                                            Colors.redAccent),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 16, right: 16, top: 7),
                                    child: Container(
                                      height: 100,
                                      width:
                                          MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        color: Colors.blue[900],
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(12),
                                            topRight: Radius.circular(12),
                                            bottomLeft: Radius.circular(12),
                                            bottomRight: Radius.circular(12)),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(16),
                                        child: Column(
                                          children: [
                                            Expanded(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    '% 5',
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white),
                                                  ),

                                                  //SizedBox(width: 5),
                                                  // Text('5',
                                                  //     style: TextStyle(
                                                  //     fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white
                                                  // ),),

                                                  //SizedBox(width: 5),
                                                  Text(
                                                    'Buy - Binance',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors
                                                            .lightGreenAccent),
                                                  ),

                                                  //SizedBox(width: 5),
                                                  Text(
                                                    'Sell - Houbi',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color:
                                                            Colors.redAccent),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Expanded(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'BTC',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white),
                                                  ),

                                                  //SizedBox(width: 53),
                                                  Text(
                                                    '\$ 44900',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors
                                                            .lightGreenAccent),
                                                  ),

                                                  //SizedBox(width: 65),
                                                  Text(
                                                    '\$ 45080',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color:
                                                            Colors.redAccent),
                                                  ),
                                                ],
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
                        ),
                      ),
                    ),
                    //],
                    //crossAxisCount: 1),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  void getAllDetails() async{
    var response = await userDetails.get('https://abitrex-backend.herokuapp.com/api/account/myprofile');
    setState(() {
      userDetail = UserInfo.fromJson(response['body']);
      circular = false;
    });
  }
}


