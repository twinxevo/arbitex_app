import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ArbSettings extends StatelessWidget {
  ArbSettings({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 0.0, end: -8.0),
            Pin(size: 68.0, start: 0.0),
            child:
                // Adobe XD layer: 'Navigation Bar' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 20.0, start: 0.0),
                  child:
                      // Adobe XD layer: 'Rectangle 475' (shape)
                      Container(
                    color: const Color(0xfff1f9ff),
                  ),
                ),
                // Adobe XD layer: 'Rectangle 476' (shape)
                Container(
                  color: const Color(0xfff1f9ff),
                  margin: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                ),
                Align(
                  alignment: Alignment(0.003, 0.346),
                  child: SizedBox(
                    width: 70.0,
                    height: 16.0,
                    child:
                        // Adobe XD layer: 'SETTINGS' (text)
                        Text(
                      'SETTINGS',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 14,
                        color: const Color(0xff2699fb),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                      softWrap: false,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 16.0, start: 16.0),
                  Pin(size: 16.0, middle: 0.6923),
                  child:
                      // Adobe XD layer: 'Menu' (group)
                      Stack(
                    children: <Widget>[
                      // Adobe XD layer: 'Rectangle 175' (shape)
                      Container(
                        decoration: BoxDecoration(),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 0.0, vertical: 1.0),
                        child:
                            // Adobe XD layer: 'Union 4' (group)
                            Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(size: 2.0, start: 0.0),
                              child:
                                  // Adobe XD layer: 'Rectangle 172' (shape)
                                  Container(
                                color: const Color(0xff2699fb),
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(size: 2.0, middle: 0.5),
                              child:
                                  // Adobe XD layer: 'Rectangle 173' (shape)
                                  Container(
                                color: const Color(0xff2699fb),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child:
                                  // Adobe XD layer: 'Rectangle 174' (shape)
                                  Container(
                                width: 8.0,
                                height: 2.0,
                                color: const Color(0xff2699fb),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 16.0, end: 16.0),
                  Pin(size: 16.0, middle: 0.6923),
                  child:
                      // Adobe XD layer: 'Search' (group)
                      Stack(
                    children: <Widget>[
                      // Adobe XD layer: 'Rectangle 176' (shape)
                      Container(
                        decoration: BoxDecoration(),
                      ),
                      SizedBox.expand(
                          child:
                              // Adobe XD layer: 'Path 99' (shape)
                              SvgPicture.string(
                        _svg_zadrce,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      )),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0.0, 68.0, -8.0, 71.0),
            child:
                // Adobe XD layer: 'Settings' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 242.0, start: 0.0),
                  child:
                      // Adobe XD layer: 'hero' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 106.0, end: 0.0),
                        child:
                            // Adobe XD layer: 'Rectangle 482' (shape)
                            Container(
                          color: const Color(0xfff1f9ff),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 136.0, start: 0.0),
                        child:
                            // Adobe XD layer: 'Photo' (group)
                            Stack(
                          children: <Widget>[
                            // Adobe XD layer: 'Rectangle 477' (shape)
                            Container(
                              color: const Color(0xffbce0fd),
                            ),
                            Center(
                              child: SizedBox(
                                width: 69.0,
                                height: 69.0,
                                child:
                                    // Adobe XD layer: 'Union 31' (group)
                                    Stack(
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child:
                                          // Adobe XD layer: 'Ellipse 154' (shape)
                                          Container(
                                        width: 34.0,
                                        height: 34.0,
                                        decoration: BoxDecoration(
                                          color: const Color(0xff7fc4fd),
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(
                                                  9999.0, 9999.0)),
                                        ),
                                      ),
                                    ),
                                    Pinned.fromPins(
                                      Pin(start: 0.0, end: 0.0),
                                      Pin(size: 25.7, end: 0.0),
                                      child:
                                          // Adobe XD layer: 'Path 144' (shape)
                                          SvgPicture.string(
                                        _svg_,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 32.0, end: 32.0),
                        Pin(size: 42.0, end: 32.0),
                        child:
                            // Adobe XD layer: 'Name' (group)
                            Stack(
                          children: <Widget>[
                            Align(
                              alignment: Alignment.topLeft,
                              child: SizedBox(
                                width: 91.0,
                                height: 22.0,
                                child:
                                    // Adobe XD layer: 'John Doe' (text)
                                    Text(
                                  'John Doe',
                                  style: TextStyle(
                                    fontFamily: 'Arial',
                                    fontSize: 20,
                                    color: const Color(0xff2699fb),
                                    fontWeight: FontWeight.w700,
                                    height: 1.2,
                                  ),
                                  textHeightBehavior: TextHeightBehavior(
                                      applyHeightToFirstAscent: false),
                                  softWrap: false,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: SizedBox(
                                width: 117.0,
                                height: 16.0,
                                child:
                                    // Adobe XD layer: 'San Francisco, CA' (text)
                                    Text(
                                  'San Francisco, CA',
                                  style: TextStyle(
                                    fontFamily: 'Arial',
                                    fontSize: 14,
                                    color: const Color(0xff2699fb),
                                    height: 1.7142857142857142,
                                  ),
                                  textHeightBehavior: TextHeightBehavior(
                                      applyHeightToFirstAscent: false),
                                  softWrap: false,
                                ),
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 96.0, end: 0.0),
                              Pin(start: 1.0, end: 1.0),
                              child:
                                  // Adobe XD layer: 'Symbol 123 – 2' (group)
                                  Stack(
                                children: <Widget>[
                                  // Adobe XD layer: 'Rectangle 150' (shape)
                                  Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xff2699fb),
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment(0.0, 0.034),
                                    child: SizedBox(
                                      width: 22.0,
                                      height: 11.0,
                                      child:
                                          // Adobe XD layer: 'EDIT' (text)
                                          Text(
                                        'EDIT',
                                        style: TextStyle(
                                          fontFamily: 'Arial',
                                          fontSize: 10,
                                          color: const Color(0xffffffff),
                                          fontWeight: FontWeight.w700,
                                          height: 1.2,
                                        ),
                                        textHeightBehavior: TextHeightBehavior(
                                            applyHeightToFirstAscent: false),
                                        textAlign: TextAlign.center,
                                        softWrap: false,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment(-0.464, 0.101),
                  child: SizedBox(
                    width: 73.0,
                    height: 14.0,
                    child:
                        // Adobe XD layer: 'Notifications' (text)
                        Text(
                      'Notifications',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 12,
                        color: const Color(0xff2699fb),
                        fontWeight: FontWeight.w700,
                      ),
                      softWrap: false,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(-0.509, 0.28),
                  child: SizedBox(
                    width: 45.0,
                    height: 14.0,
                    child:
                        // Adobe XD layer: 'General' (text)
                        Text(
                      'General',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 12,
                        color: const Color(0xff2699fb),
                        fontWeight: FontWeight.w700,
                      ),
                      softWrap: false,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(-0.505, 0.459),
                  child: SizedBox(
                    width: 48.0,
                    height: 14.0,
                    child:
                        // Adobe XD layer: 'Account' (text)
                        Text(
                      'Account',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 12,
                        color: const Color(0xff2699fb),
                        fontWeight: FontWeight.w700,
                      ),
                      softWrap: false,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(-0.512, 0.638),
                  child: SizedBox(
                    width: 43.0,
                    height: 14.0,
                    child:
                        // Adobe XD layer: 'Privacy' (text)
                        Text(
                      'Privacy',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 12,
                        color: const Color(0xff2699fb),
                        fontWeight: FontWeight.w700,
                      ),
                      softWrap: false,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 79.0, middle: 0.2736),
                  Pin(size: 14.0, end: 47.0),
                  child:
                      // Adobe XD layer: 'Block' (text)
                      Text(
                    'Report Issues',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 12,
                      color: const Color(0xff2699fb),
                      fontWeight: FontWeight.w700,
                    ),
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 26.0, middle: 0.2321),
                  Pin(size: 14.0, end: 1.0),
                  child:
                      // Adobe XD layer: 'Help' (text)
                      Text(
                    'Help',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 12,
                      color: const Color(0xff2699fb),
                      fontWeight: FontWeight.w700,
                    ),
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 16.0, start: 33.0),
                  Pin(size: 16.0, middle: 0.5508),
                  child:
                      // Adobe XD layer: 'Notifications' (group)
                      Stack(
                    children: <Widget>[
                      // Adobe XD layer: 'Rectangle 479' (shape)
                      Container(
                        decoration: BoxDecoration(),
                      ),
                      SizedBox.expand(
                          child:
                              // Adobe XD layer: 'Path 1' (shape)
                              SvgPicture.string(
                        _svg_gxotty,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      )),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 16.0, start: 33.0),
                  Pin(size: 16.0, middle: 0.6406),
                  child:
                      // Adobe XD layer: 'Symbol 147 – 1' (group)
                      Stack(
                    children: <Widget>[
                      // Adobe XD layer: 'Rectangle 193' (shape)
                      Container(
                        decoration: BoxDecoration(),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.8, 0.0),
                        child: SizedBox.expand(
                            child:
                                // Adobe XD layer: 'Path 104' (shape)
                                SvgPicture.string(
                          _svg_qpqman,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        )),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 16.0, start: 32.0),
                  Pin(size: 16.0, middle: 0.7305),
                  child:
                      // Adobe XD layer: 'Symbol 6 – 30' (group)
                      Stack(
                    children: <Widget>[
                      // Adobe XD layer: 'Union 1' (group)
                      Stack(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.topCenter,
                            child:
                                // Adobe XD layer: 'Ellipse 3' (shape)
                                Container(
                              width: 8.0,
                              height: 8.0,
                              decoration: BoxDecoration(
                                color: const Color(0xff2699fb),
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(9999.0, 9999.0)),
                              ),
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(start: 0.0, end: 0.0),
                            Pin(size: 6.0, end: 0.0),
                            child:
                                // Adobe XD layer: 'Path 6' (shape)
                                SvgPicture.string(
                              _svg_l28dzw,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 16.0, start: 33.0),
                  Pin(size: 16.0, middle: 0.8203),
                  child:
                      // Adobe XD layer: 'Symbol 50 – 1' (group)
                      Stack(
                    children: <Widget>[
                      // Adobe XD layer: 'Rectangle 118' (shape)
                      Container(
                        decoration: BoxDecoration(),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 1.0, vertical: 0.0),
                        child: SizedBox.expand(
                            child:
                                // Adobe XD layer: 'Path 49' (shape)
                                SvgPicture.string(
                          _svg_fy8d8n,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        )),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 16.0, start: 33.0),
                  Pin(size: 16.0, end: 46.0),
                  child:
                      // Adobe XD layer: 'Blacklist' (group)
                      Stack(
                    children: <Widget>[
                      // Adobe XD layer: 'Rectangle 480' (shape)
                      Container(
                        decoration: BoxDecoration(),
                      ),
                      SizedBox.expand(
                          child:
                              // Adobe XD layer: 'Path 145' (shape)
                              SvgPicture.string(
                        _svg_qggqux,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      )),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 16.0, start: 33.0),
                  Pin(size: 16.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Help' (group)
                      Stack(
                    children: <Widget>[
                      // Adobe XD layer: 'Rectangle 481' (shape)
                      Container(
                        decoration: BoxDecoration(),
                      ),
                      SizedBox.expand(
                          child:
                              // Adobe XD layer: 'Path 146' (shape)
                              SvgPicture.string(
                        _svg_e150n,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      )),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment(0.019, -0.033),
            child: Container(
              width: 206.0,
              height: 28.0,
              decoration: BoxDecoration(
                color: const Color(0xff2699fb),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.006, -0.032),
            child: SizedBox(
              width: 194.0,
              height: 12.0,
              child: Text(
                'DEPOSIT & WITHDRAWAL',
                style: TextStyle(
                  fontFamily: 'Circular Std',
                  fontSize: 12,
                  color: const Color(0xfff2f5f7),
                  letterSpacing: 2.4000000000000004,
                  fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.center,
                softWrap: false,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_zadrce =
    '<svg viewBox="0.0 0.0 15.9 15.9" ><path  d="M 15.89999961853027 14.5 L 12.59999942779541 11.19999980926514 C 13.5 10 14 8.600000381469727 14 7 C 14 3.099999904632568 10.89999961853027 0 7 0 C 3.100000381469727 0 0 3.099999904632568 0 7 C 0 10.89999961853027 3.099999904632568 14 7 14 C 8.600000381469727 14 10 13.5 11.19999980926514 12.60000038146973 L 14.5 15.90000057220459 L 15.89999961853027 14.5 Z M 2 7 C 2 4.199999809265137 4.199999809265137 2 7 2 C 9.800000190734863 2 12 4.199999809265137 12 7 C 12 9.800000190734863 9.800000190734863 12 7 12 C 4.199999809265137 12 2 9.800000190734863 2 7 Z" fill="#2699fb" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ =
    '<svg viewBox="0.0 396.9 68.6 25.7" ><path transform="translate(0.0, 386.88)" d="M 34.30033493041992 10 C 15.43515014648438 10 0 17.71757507324219 0 27.1501636505127 L 0 35.72524642944336 L 68.60066986083984 35.72524642944336 L 68.60066986083984 27.1501636505127 C 68.60066986083984 17.71757507324219 53.1655158996582 10 34.30033493041992 10 Z" fill="#7fc4fd" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_gxotty =
    '<svg viewBox="0.0 0.0 15.9 16.0" ><path transform="translate(-0.06, 0.0)" d="M 15 14 L 10 14 C 10 15.10000038146973 9.100000381469727 16 8 16 C 6.899999618530273 16 6 15.10000038146973 6 14 L 1 14 C 0.6000000238418579 14 0.199999988079071 13.69999980926514 0.1000000238418579 13.30000019073486 C 2.235174179077148e-08 12.90000057220459 0.1000000238418579 12.40000057220459 0.4000000357627869 12.19999980926514 C 1.399999976158142 11.39999961853027 2 10.30000019073486 2 9 L 2 6 C 2 2.700000047683716 4.699999809265137 0 8 0 C 11.30000019073486 0 14 2.700000047683716 14 6 L 14 9 C 14 10.30000019073486 14.60000038146973 11.39999961853027 15.60000038146973 12.19999980926514 C 15.90000057220459 12.5 16.10000038146973 12.89999961853027 15.90000057220459 13.30000019073486 C 15.80000019073486 13.69999980926514 15.39999961853027 14 15 14 Z" fill="#2699fb" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_qpqman =
    '<svg viewBox="0.0 0.0 15.2 16.0" ><path transform="translate(-260.0, 0.0)" d="M 267.5 10 C 268.6000061035156 10 269.5 9.100000381469727 269.5 8 C 269.5 6.899999618530273 268.6000061035156 6 267.5 6 C 266.3999938964844 6 265.5 6.900000095367432 265.5 8 C 265.5 9.100000381469727 266.3999938964844 10 267.5 10 Z M 263.3999938964844 3.599999904632568 C 264.1000061035156 3 264.8999938964844 2.5 265.7999877929688 2.299999952316284 L 266.5999755859375 0 L 268.5999755859375 0 L 269.3999633789062 2.299999952316284 C 270.2999572753906 2.599999904632568 271.0999755859375 3 271.7999572753906 3.599999904632568 L 274.199951171875 3.099999904632568 L 275.199951171875 4.899999618530273 L 273.5999450683594 6.699999809265137 C 273.699951171875 7.099999904632568 273.699951171875 7.599999904632568 273.699951171875 8 C 273.699951171875 8.399999618530273 273.5999450683594 8.899999618530273 273.5999450683594 9.300000190734863 L 275.199951171875 11.10000038146973 L 274.199951171875 12.90000057220459 L 271.7999572753906 12.40000057220459 C 271.0999450683594 13.00000095367432 270.2999572753906 13.50000095367432 269.3999633789062 13.70000076293945 L 268.5999755859375 16 L 266.5999755859375 16 L 265.7999877929688 13.69999980926514 C 264.8999938964844 13.39999961853027 264.0999755859375 13 263.3999938964844 12.39999961853027 L 261 12.89999961853027 L 260 11.09999942779541 L 261.6000061035156 9.299999237060547 C 261.5 8.899999618530273 261.5 8.399999618530273 261.5 7.999999046325684 C 261.5 7.599998474121094 261.6000061035156 7.099998950958252 261.6000061035156 6.69999885559082 L 260 4.900000095367432 L 261 3.100000143051147 L 263.3999938964844 3.599999904632568 Z" fill="#2699fb" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_l28dzw =
    '<svg viewBox="0.0 364.0 16.0 6.0" ><path transform="translate(0.0, 354.0)" d="M 8 10 C 3.599999904632568 10 0 11.80000019073486 0 14 L 0 16 L 16 16 L 16 14 C 16 11.80000019073486 12.39999961853027 10 8 10 Z" fill="#2699fb" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_fy8d8n =
    '<svg viewBox="1.0 0.0 14.0 16.0" ><path transform="translate(1.0, 0.0)" d="M 7 8 C 8.100000381469727 8 9 8.899999618530273 9 10 C 9 11.10000038146973 8.100000381469727 12 7 12 C 5.899999618530273 12 5 11.10000038146973 5 10 C 5 8.899999618530273 5.900000095367432 8 7 8 Z M 7 2 C 5.900000095367432 2 5 2.900000095367432 5 4 L 9 4 C 9 2.900000095367432 8.100000381469727 2 7 2 Z M 12 16 L 2 16 C 0.8999999761581421 16 0 15.10000038146973 0 14 L 0 6 C 0 4.900000095367432 0.8999999761581421 4 2 4 L 3 4 C 3 1.799999952316284 4.800000190734863 0 7 0 C 9.199999809265137 0 11 1.799999952316284 11 4 L 12 4 C 13.10000038146973 4 14 4.900000095367432 14 6 L 14 14 C 14 15.10000038146973 13.10000038146973 16 12 16 Z" fill="#2699fb" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_qggqux =
    '<svg viewBox="0.0 0.0 16.0 16.0" ><path  d="M 8 0 C 3.600000143051147 0 0 3.600000143051147 0 8 C 0 12.40000057220459 3.600000143051147 16 8 16 C 12.40000057220459 16 16 12.40000057220459 16 8 C 16 3.600000143051147 12.40000057220459 0 8 0 Z M 2.400000095367432 8 C 2.400000095367432 6.880000591278076 2.720000028610229 5.840000152587891 3.279999971389771 4.960000038146973 L 11.03999996185303 12.72000026702881 C 10.15999984741211 13.28000068664551 9.119999885559082 13.60000038146973 8 13.60000038146973 C 4.880000114440918 13.60000038146973 2.400000095367432 11.11999988555908 2.400000095367432 8 Z M 12.72000026702881 11.03999996185303 L 4.960000038146973 3.279999971389771 C 5.840000152587891 2.720000028610229 6.880000591278076 2.400000095367432 8 2.400000095367432 C 11.11999988555908 2.400000095367432 13.60000038146973 4.880000114440918 13.60000038146973 8 C 13.60000038146973 9.119999885559082 13.28000068664551 10.15999984741211 12.72000026702881 11.03999996185303 Z" fill="#2699fb" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_e150n =
    '<svg viewBox="0.0 0.0 16.0 16.0" ><path  d="M 8 0 C 3.600000143051147 0 0 3.600000143051147 0 8 C 0 12.40000057220459 3.600000143051147 16 8 16 C 12.40000057220459 16 16 12.40000057220459 16 8 C 16 3.600000143051147 12.40000057220459 0 8 0 Z M 7.919999599456787 13.28000068664551 C 7.279999732971191 13.28000068664551 6.800000190734863 12.80000019073486 6.800000190734863 12.16000080108643 C 6.800000190734863 11.52000045776367 7.28000020980835 11.04000091552734 7.919999599456787 11.04000091552734 C 8.560000419616699 11.04000091552734 9.039999961853027 11.52000141143799 9.039999961853027 12.16000080108643 C 9.039999961853027 12.80000019073486 8.560000419616699 13.28000068664551 7.919999599456787 13.28000068664551 Z M 10.08000087738037 7.040000438690186 L 9.199999809265137 8 C 8.960000038146973 8.24000072479248 8.880000114440918 8.480000495910645 8.880000114440918 8.720000267028809 C 8.880000114440918 9.279999732971191 8.40000057220459 9.679999351501465 7.920000553131104 9.679999351501465 C 7.360000610351562 9.679999351501465 6.960000514984131 9.279999732971191 6.960000514984131 8.720000267028809 C 6.960000514984131 8.239999771118164 7.040000915527344 7.839999675750732 7.600000858306885 7.279999732971191 L 8.319999694824219 6.400000095367432 C 8.720000267028809 5.920000076293945 8.880000114440918 5.599999904632568 8.880000114440918 5.28000020980835 C 8.880000114440918 4.720000267028809 8.479999542236328 4.400000095367432 7.999999523162842 4.400000095367432 C 7.519999027252197 4.400000095367432 7.199999332427979 4.640000343322754 7.039999485015869 5.12000036239624 C 6.800000190734863 5.519999980926514 6.480000495910645 5.679999828338623 6.079999923706055 5.679999828338623 C 5.599999904632568 5.679999828338623 5.200000286102295 5.360000133514404 5.200000286102295 4.800000190734863 C 5.200000286102295 4.720000267028809 5.200000286102295 4.559999942779541 5.28000020980835 4.400000095367432 C 5.599999904632568 3.440000295639038 6.559999942779541 2.720000028610229 8 2.720000028610229 C 9.680000305175781 2.720000028610229 10.80000019073486 3.840000152587891 10.80000019073486 5.28000020980835 C 10.80000019073486 5.920000076293945 10.5600004196167 6.480000495910645 10.08000087738037 7.040000438690186 Z" fill="#2699fb" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
