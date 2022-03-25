import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ArbTrade extends StatelessWidget {
  ArbTrade({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 27.0, end: 26.0),
            Pin(size: 56.0, end: 26.0),
            child:
                // Adobe XD layer: 'Navigation Bar 6' (group)
                Stack(
              children: <Widget>[
                // Adobe XD layer: 'Rectangle 192' (shape)
                Container(
                  color: const Color(0xff2699fb),
                ),
                Pinned.fromPins(
                  Pin(size: 27.5, start: 39.0),
                  Pin(size: 27.0, middle: 0.5172),
                  child:
                      // Adobe XD layer: 'Profile' (group)
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
                              width: 14.0,
                              height: 13.0,
                              decoration: BoxDecoration(
                                color: const Color(0xe1ffffff),
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(9999.0, 9999.0)),
                              ),
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(start: 0.0, end: 0.0),
                            Pin(size: 10.3, end: 0.0),
                            child:
                                // Adobe XD layer: 'Path 6' (shape)
                                SvgPicture.string(
                              _svg_c7i6h3,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment(-0.077, 0.0),
                  child: SizedBox(
                    width: 26.0,
                    height: 26.0,
                    child:
                        // Adobe XD layer: 'Feed' (group)
                        Stack(
                      children: <Widget>[
                        SizedBox.expand(
                            child:
                                // Adobe XD layer: 'Path 102' (shape)
                                SvgPicture.string(
                          _svg_p3d5al,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        )),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(0.589, 0.04),
                  child: SizedBox(
                    width: 31.0,
                    height: 31.0,
                    child:
                        // Adobe XD layer: 'Settings' (group)
                        Stack(
                      children: <Widget>[
                        // Adobe XD layer: 'Rectangle 193' (shape)
                        Container(
                          decoration: BoxDecoration(),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(1.9, 0.0, 0.0, 0.0),
                          child: SizedBox.expand(
                              child:
                                  // Adobe XD layer: 'Path 104' (shape)
                                  SvgPicture.string(
                            _svg_xfej7d,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          )),
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
    );
  }
}

const String _svg_c7i6h3 =
    '<svg viewBox="0.0 17.2 27.5 10.3" ><path transform="translate(0.0, 7.17)" d="M 13.73852348327637 10 C 6.18233585357666 10 0 13.09116744995117 0 16.86926078796387 L 0 20.30389404296875 L 27.47704696655273 20.30389404296875 L 27.47704696655273 16.86926078796387 C 27.47704696655273 13.09116744995117 21.29471206665039 10 13.73852348327637 10 Z" fill="#ffffff" fill-opacity="0.88" stroke="none" stroke-width="1" stroke-opacity="0.88" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_p3d5al =
    '<svg viewBox="0.0 0.0 26.0 26.0" ><path  d="M 0 22.75 L 26 22.75 L 26 26 L 0 26 L 0 22.75 Z M 0 11.375 L 26 11.375 L 26 19.5 L 0 19.5 L 0 11.375 Z M 11.375 0 L 26 0 L 26 8.125 L 11.375 8.125 L 11.375 0 Z M 0 0 L 8.125 0 L 8.125 8.125 L 0 8.125 L 0 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_xfej7d =
    '<svg viewBox="1.9 0.0 29.4 31.0" ><path transform="translate(-258.06, 0.0)" d="M 274.53125 19.375 C 276.6625366210938 19.375 278.40625 17.63125038146973 278.40625 15.5 C 278.40625 13.36874961853027 276.6625366210938 11.625 274.53125 11.625 C 272.3999633789062 11.625 270.65625 13.36875057220459 270.65625 15.5 C 270.65625 17.63125038146973 272.3999633789062 19.375 274.53125 19.375 Z M 266.5874633789062 6.97499942779541 C 267.9437866210938 5.8125 269.4937133789062 4.84375 271.2374877929688 4.456249713897705 L 272.7874755859375 0 L 276.6624755859375 0 L 278.21240234375 4.456249713897705 C 279.9561767578125 5.037499904632568 281.5062255859375 5.8125 282.8624267578125 6.97499942779541 L 287.5123901367188 6.006249904632568 L 289.4498901367188 9.493749618530273 L 286.349853515625 12.98124980926514 C 286.5436401367188 13.75624942779541 286.5436401367188 14.72500038146973 286.5436401367188 15.5 C 286.5436401367188 16.27499961853027 286.349853515625 17.24374961853027 286.349853515625 18.01875114440918 L 289.4498901367188 21.50625038146973 L 287.5123901367188 24.99375152587891 L 282.8624267578125 24.02500152587891 C 281.506103515625 25.18750190734863 279.9561767578125 26.15625190734863 278.21240234375 26.54375076293945 L 276.6624755859375 31 L 272.7874755859375 31 L 271.2374877929688 26.54374885559082 C 269.4937133789062 25.96249961853027 267.9437255859375 25.1875 266.5874633789062 24.02499961853027 L 261.9375 24.99374961853027 L 260 21.50624847412109 L 263.1000366210938 18.01874923706055 C 262.90625 17.24374961853027 262.90625 16.27499961853027 262.90625 15.49999809265137 C 262.90625 14.72499656677246 263.1000366210938 13.75624752044678 263.1000366210938 12.98124694824219 L 260 9.49375057220459 L 261.9375 6.006250381469727 L 266.5874633789062 6.97499942779541 Z" fill="#ffffff" fill-opacity="1.0" stroke="none" stroke-width="1" stroke-opacity="1.0" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
