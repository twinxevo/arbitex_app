import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'arb_sign_up.dart';

class ArbOnboarding extends StatefulWidget {
  ArbOnboarding({
    Key? key,
  }) : super(key: key);

  @override
  State<ArbOnboarding> createState() => _ArbOnboardingState();
}

class _ArbOnboardingState extends State<ArbOnboarding> {

  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 155.0, end: 24.0),
            Pin(size: 48.0, end: 24.0),
            child:
                //  layer: 'Next' (group)
                Stack(
              children: <Widget>[
                //  layer: 'Rectangle 150' (shape)
                Container(
                  child: InkWell(
                    onTap: () {
                      print('Next login');
                      setState(() {
                        _isLoading = true;
                      });
                      Future.delayed(Duration(seconds: 1), () {
                        setState(() {
                          _isLoading = false;
                        });
                        Navigator.pushReplacement(
                            context, MaterialPageRoute(builder: (_)=> ArbSignUp()));
                      });

                    },
                    child: Material (
                      color: const Color(0xff2699fb),
                      borderRadius: BorderRadius.circular(4.0),
                      elevation: 4.0,
                      child: Align(
                        alignment: Alignment(0.008, 0.027),
                        child: SizedBox(
                          width: 26.0,
                          height: 11.0,
                          child:
                          _isLoading?
                          CircularProgressIndicator(
                            color: const Color(0xffffffff),
                          ): Text(
                            'NEXT>',
                            style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 10,
                              color: const Color(0xffffffff),
                              fontWeight: FontWeight.w700,
                              height: 1.2,
                            ),
                            textHeightBehavior:
                            TextHeightBehavior(applyHeightToFirstAscent: false),
                            textAlign: TextAlign.center,
                            softWrap: false,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),

          Align(
            alignment: Alignment(0.009, -0.511),
            child: SizedBox(
              width: 185.0,
              height: 160.0,
              child:
                  // Adobe XD layer: 'Illustration' (group)
                  Stack(
                children: <Widget>[
                  // Adobe XD layer: 'illustration' (group)
                  Stack(
                    children: <Widget>[
                      SizedBox.expand(
                          child:
                              // Adobe XD layer: 'Path 235' (shape)
                              SvgPicture.string(
                        _svg_tpi5gg,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      )),
                      SizedBox.expand(
                          child:
                              // Adobe XD layer: 'Path 236' (shape)
                              SvgPicture.string(
                        _svg_snmg3h,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      )),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 50.0, end: 50.0),
            Pin(size: 163.0, middle: 0.6567),
            child:
                // Adobe XD layer: 'Title' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 43.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Ut labore et dolore…' (text)
                      Text(
                    'Let your money arbitrage for you.\nEarn up to 5% of your investment daily.',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 14,
                      color: const Color(0xff2699fb),
                      height: 1.7142857142857142,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.center,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 96.0, start: 0.0),
                  child:
                      // Adobe XD layer: 'Excepteur sint occa…' (text)
                      Text(
                    'ArbitEx',
                    style: TextStyle(
                      fontFamily: 'Georgia',
                      fontSize: 40,
                      color: const Color(0xff2699fb),
                      height: 1.25,
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_tpi5gg =
    '<svg viewBox="670.0 267.0 184.7 160.0" ><path transform="translate(27.1, 267.0)" d="M 781.4000244140625 0 L 689.0999755859375 0 L 642.9000244140625 80 L 689.0999755859375 160 L 781.4000244140625 160 L 827.5999755859375 80 L 781.4000244140625 0 Z" fill="#bce0fd" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_snmg3h =
    '<svg viewBox="670.0 267.0 184.7 160.0" ><path transform="translate(27.1, 267.0)" d="M 781.4000244140625 0 L 689.0999755859375 160 L 642.9000244140625 80 L 827.5999755859375 80 L 781.4000244140625 0 Z" fill="#2699fb" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
