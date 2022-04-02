import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ArbTrades extends StatelessWidget {
  ArbTrades({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 72.0, start: 54.0),
            Pin(size: 72.0, middle: 0.1899),
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff76befa),
                    borderRadius: BorderRadius.circular(14.0),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 21.0, middle: 0.4706),
                  Pin(start: 10.0, end: 10.0),
                  child: Text(
                    '\$',
                    style: TextStyle(
                      fontFamily: 'Roboto Slab',
                      fontSize: 39,
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w700,
                    ),
                    softWrap: false,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 23.5, end: 23.5),
            Pin(size: 149.0, start: 74.0),
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0x37bce0fd),
                    borderRadius: BorderRadius.circular(18.0),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x03681e79),
                        offset: Offset(0, 3),
                        blurRadius: 44,
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment(0.017, -0.431),
                  child: SizedBox(
                    width: 95.0,
                    height: 33.0,
                    child: Text(
                      '5,350.67',
                      style: TextStyle(
                        fontFamily: 'Roboto Slab',
                        fontSize: 25,
                        color: const Color(0xff5e5e5e),
                        fontWeight: FontWeight.w700,
                      ),
                      softWrap: false,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(0.048, 0.256),
                  child: SizedBox(
                    width: 98.0,
                    height: 20.0,
                    child: Text(
                      '0.140692 BTC	',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 15,
                        color: const Color(0x8c5e5e5e),
                      ),
                      softWrap: false,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 24.0, end: 23.0),
            Pin(size: 315.0, middle: 0.6705),
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(18.0),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x0a380943),
                        offset: Offset(0, 3),
                        blurRadius: 30,
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 47.0, end: 0.0),
                  Pin(size: 35.0, middle: 0.3179),
                  child: Text(
                    'Buy - Binance \$44,900\nSell - Houbi \$45,080',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 12,
                      color: const Color(0xff707070),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 47.0, end: 0.0),
                  Pin(size: 35.0, middle: 0.5821),
                  child: Text(
                    'Buy - Hotbit \$44,500\nSell - Binance \$44,900',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 12,
                      color: const Color(0xff707070),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 47.0, end: 0.0),
                  Pin(size: 35.0, end: 43.0),
                  child: Text(
                    'Buy - Kucoin \$44,500\nSell - Hitbtc \$44,750',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 12,
                      color: const Color(0xff707070),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 87.0, start: 44.0),
                  Pin(size: 23.0, middle: 0.1849),
                  child: Text(
                    'Difference:',
                    style: TextStyle(
                      fontFamily: 'Roboto Slab',
                      fontSize: 17,
                      color: const Color(0xff5e5e5e),
                      fontWeight: FontWeight.w700,
                    ),
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 87.0, start: 44.0),
                  Pin(size: 23.0, middle: 0.4658),
                  child: Text(
                    'Difference:',
                    style: TextStyle(
                      fontFamily: 'Roboto Slab',
                      fontSize: 17,
                      color: const Color(0xff5e5e5e),
                      fontWeight: FontWeight.w700,
                    ),
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 87.0, start: 47.0),
                  Pin(size: 23.0, middle: 0.7192),
                  child: Text(
                    'Difference:',
                    style: TextStyle(
                      fontFamily: 'Roboto Slab',
                      fontSize: 17,
                      color: const Color(0xff5e5e5e),
                      fontWeight: FontWeight.w700,
                    ),
                    softWrap: false,
                  ),
                ),
                Align(
                  alignment: Alignment(0.049, 0.435),
                  child: SizedBox(
                    width: 61.0,
                    height: 21.0,
                    child: Text(
                      '\$ 250.00',
                      style: TextStyle(
                        fontFamily: 'Roboto Slab',
                        fontSize: 16,
                        color: const Color(0xff5e5e5e),
                        fontWeight: FontWeight.w700,
                      ),
                      softWrap: false,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(0.03, -0.068),
                  child: SizedBox(
                    width: 62.0,
                    height: 21.0,
                    child: Text(
                      '\$ 400.00',
                      style: TextStyle(
                        fontFamily: 'Roboto Slab',
                        fontSize: 16,
                        color: const Color(0xff5e5e5e),
                        fontWeight: FontWeight.w700,
                      ),
                      softWrap: false,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(0.022, -0.626),
                  child: SizedBox(
                    width: 60.0,
                    height: 21.0,
                    child: Text(
                      '\$ 180.00',
                      style: TextStyle(
                        fontFamily: 'Roboto Slab',
                        fontSize: 16,
                        color: const Color(0xff5e5e5e),
                        fontWeight: FontWeight.w700,
                      ),
                      softWrap: false,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 16.0, end: 34.0),
            Pin(size: 16.0, start: 40.0),
            child:
                // Adobe XD layer: 'Menu' (group)
                Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 1.0),
                  child:
                      // Adobe XD layer: 'Menu' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 2.0, start: 0.0),
                        child:
                            // Adobe XD layer: 'Rectangle 4' (shape)
                            Container(
                          color: const Color(0xff2699fb),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 2.0, middle: 0.5),
                        child:
                            // Adobe XD layer: 'Rectangle 5' (shape)
                            Container(
                          color: const Color(0xff2699fb),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child:
                            // Adobe XD layer: 'Rectangle 6' (shape)
                            Container(
                          width: 10.0,
                          height: 2.0,
                          color: const Color(0xff2699fb),
                        ),
                      ),
                    ],
                  ),
                ),
                // Adobe XD layer: 'Rectangle 1446' (shape)
                Container(
                  decoration: BoxDecoration(),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment(0.0, -0.238),
            child: SizedBox(
              width: 221.0,
              height: 24.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromPins(
                    Pin(size: 40.0, end: 0.0),
                    Pin(start: 0.0, end: 0.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff76befa),
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(
                            width: 1.0, color: const Color(0xff707070)),
                      ),
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(size: 39.0, start: 0.0),
                    Pin(start: 0.0, end: 0.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffe1f0fd),
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(
                            width: 1.0, color: const Color(0xff707070)),
                      ),
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(size: 39.0, middle: 0.6648),
                    Pin(start: 0.0, end: 0.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffe1f0fd),
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(
                            width: 1.0, color: const Color(0xff707070)),
                      ),
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(size: 38.0, middle: 0.3333),
                    Pin(start: 0.0, end: 0.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffe1f0fd),
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(
                            width: 1.0, color: const Color(0xff707070)),
                      ),
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(size: 22.0, start: 8.0),
                    Pin(size: 9.0, middle: 0.5333),
                    child: Text(
                      '25%',
                      style: TextStyle(
                        fontFamily: 'Circular Std',
                        fontSize: 9,
                        color: const Color(0xff030000),
                        letterSpacing: 1.8,
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.center,
                      softWrap: false,
                    ),
                  ),
                  Align(
                    alignment: Alignment(-0.307, 0.067),
                    child: SizedBox(
                      width: 22.0,
                      height: 9.0,
                      child: Text(
                        '50%',
                        style: TextStyle(
                          fontFamily: 'Circular Std',
                          fontSize: 9,
                          color: const Color(0xff070000),
                          letterSpacing: 1.8,
                          fontWeight: FontWeight.w300,
                        ),
                        textAlign: TextAlign.center,
                        softWrap: false,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(0.307, 0.067),
                    child: SizedBox(
                      width: 22.0,
                      height: 9.0,
                      child: Text(
                        '75%',
                        style: TextStyle(
                          fontFamily: 'Circular Std',
                          fontSize: 9,
                          color: const Color(0xff030000),
                          letterSpacing: 1.8,
                          fontWeight: FontWeight.w300,
                        ),
                        textAlign: TextAlign.center,
                        softWrap: false,
                      ),
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(size: 28.0, end: 7.0),
                    Pin(size: 9.0, middle: 0.5333),
                    child: Text(
                      '100%',
                      style: TextStyle(
                        fontFamily: 'Circular Std',
                        fontSize: 9,
                        color: const Color(0xff070000),
                        letterSpacing: 1.8,
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.center,
                      softWrap: false,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: -1.0, end: 1.0),
            Pin(size: 60.0, end: 21.0),
            child: Stack(
              children: <Widget>[
                Container(
                  color: const Color(0xfff1f9ff),
                ),
                Pinned.fromPins(
                  Pin(size: 29.0, end: 33.0),
                  Pin(size: 29.0, middle: 0.5484),
                  child:
                      // Adobe XD layer: 'Layer 2' (group)
                      Stack(
                    children: <Widget>[
                      // Adobe XD layer: 'people' (group)
                      Stack(
                        children: <Widget>[
                          Container(
                            color: Colors.transparent,
                          ),
                          Pinned.fromPins(
                            Pin(size: 9.7, middle: 0.3125),
                            Pin(size: 9.7, start: 3.6),
                            child: SvgPicture.string(
                              _svg_gtxku,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Align(
                            alignment: Alignment(0.556, -0.222),
                            child: SizedBox(
                              width: 7.0,
                              height: 7.0,
                              child: SvgPicture.string(
                                _svg_p72fm,
                                allowDrawingOutsideViewBox: true,
                              ),
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(start: 2.4, end: 2.4),
                            Pin(size: 9.7, end: 3.6),
                            child: SvgPicture.string(
                              _svg_kdapf,
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
                  Pin(size: 29.0, start: 45.0),
                  Pin(size: 29.0, middle: 0.5484),
                  child:
                      // Adobe XD layer: 'Layer 2' (group)
                      Stack(
                    children: <Widget>[
                      // Adobe XD layer: 'archive' (group)
                      Stack(
                        children: <Widget>[
                          Transform.rotate(
                            angle: 1.5708,
                            child: Container(
                              color: Colors.transparent,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(3.7),
                            child: SizedBox.expand(
                                child: SvgPicture.string(
                              _svg_b4v4zg,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment(0.035, -0.12),
                  child: SizedBox(
                    width: 35.0,
                    height: 35.0,
                    child:
                        // Adobe XD layer: 'Layer 2' (group)
                        Stack(
                      children: <Widget>[
                        // Adobe XD layer: 'briefcase' (group)
                        Stack(
                          children: <Widget>[
                            Container(
                              color: Colors.transparent,
                            ),
                            Pinned.fromPins(
                              Pin(size: 14.5, middle: 0.4956),
                              Pin(start: 4.5, end: 4.4),
                              child: SvgPicture.string(
                                _svg_na31ak,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 4.4, end: 3.1),
                              Pin(size: 20.3, end: 4.4),
                              child: SvgPicture.string(
                                _svg_x35vb,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 4.4, start: 2.9),
                              Pin(size: 20.3, end: 4.4),
                              child: SvgPicture.string(
                                _svg_rj3od,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
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

const String _svg_gtxku =
    '<svg viewBox="6.0 3.6 9.7 9.7" ><path transform="translate(1.04, 0.63)" d="M 9.833333015441895 12.66666698455811 C 12.50270938873291 12.66666698455811 14.66666698455811 10.50270938873291 14.66666698455811 7.833333015441895 C 14.66666698455811 5.163957595825195 12.50270938873291 2.999999523162842 9.833332061767578 3 C 7.163958072662354 3 5 5.163958072662354 5.000000476837158 7.833333969116211 C 5.000000476837158 10.50270938873291 7.163957118988037 12.66666698455811 9.833332061767578 12.66666698455811 Z" fill="#000000" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_p72fm =
    '<svg viewBox="16.9 8.5 7.3 7.3" ><path transform="translate(2.92, 1.46)" d="M 17.62500190734863 14.25000095367432 C 19.62703323364258 14.25000095367432 21.25000190734863 12.62703227996826 21.25000190734863 10.625 C 21.25000190734863 8.622967720031738 19.62703323364258 6.999999523162842 17.62500190734863 7.000000476837158 C 15.62296772003174 7.000000476837158 14.00000095367432 8.622968673706055 14.00000095367432 10.62500190734863 C 14.00000095367432 12.62703227996826 15.62296772003174 14.25000095367432 17.62500190734863 14.25000095367432 Z" fill="#000000" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_kdapf =
    '<svg viewBox="2.4 15.7 24.2 9.7" ><path transform="translate(0.42, 2.71)" d="M 24.95833396911621 21.4564037322998 C 25.62567901611328 21.4564037322998 26.16666793823242 20.91541290283203 26.16666793823242 20.24806976318359 C 26.16469383239746 17.94416427612305 24.85258102416992 15.84192848205566 22.78375434875488 14.82805061340332 C 20.71493148803711 13.81417274475098 18.24956321716309 14.06516075134277 16.4275016784668 15.47515106201172 C 14.00730323791504 13.06445121765137 10.37460803985596 12.34615325927734 7.219065189361572 13.65435600280762 C 4.063522815704346 14.96255874633789 2.004621028900146 18.04043769836426 2.000000476837158 21.4564037322998 C 2.000000476837158 22.12374687194824 2.540989398956299 22.66473579406738 3.208333015441895 22.66473579406738 L 17.70833396911621 22.66473579406738 C 18.37567901611328 22.66473579406738 18.91666793823242 22.12374687194824 18.91666793823242 21.4564037322998" fill="#000000" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_b4v4zg =
    '<svg viewBox="3.7 3.4 21.9 21.9" ><path transform="translate(0.66, 0.43)" d="M 21.26233863830566 3 L 6.649394035339355 3 C 5.144002914428711 3.008914232254028 3.798221349716187 3.940349578857422 3.259613513946533 5.346117496490479 C 2.721005201339722 6.751884460449219 3.099869012832642 8.344103813171387 4.213903427124023 9.356630325317383 L 4.213903427124023 21.26618003845215 C 4.21390438079834 23.2838077545166 5.849513053894043 24.9194164276123 7.86713981628418 24.9194164276123 L 20.04459381103516 24.9194164276123 C 22.06221961975098 24.9194164276123 23.69783020019531 23.2838077545166 23.69783020019531 21.26618003845215 L 23.69783020019531 9.356631278991699 C 24.81186676025391 8.344106674194336 25.19073295593262 6.751885414123535 24.65212440490723 5.34611701965332 C 24.1135139465332 3.940348386764526 22.76773262023926 3.008913516998291 21.26233863830566 3 Z M 17.60910224914551 15.33576011657715 C 17.60910224914551 15.92087078094482 17.13477516174316 16.39519691467285 16.5496654510498 16.39519691467285 L 11.36206912994385 16.39520072937012 C 10.77695751190186 16.39519691467285 10.30263042449951 15.92087078094482 10.30263042449951 15.33576011657715 L 10.30263042449951 15.01914596557617 C 10.30263042449951 14.43403434753418 10.77695751190186 13.95970630645752 11.36206912994385 13.95970630645752 L 16.5496654510498 13.95970630645752 C 17.13477516174316 13.95970630645752 17.60910224914551 14.43403434753418 17.60910224914551 15.01914596557617 L 17.60910224914551 15.33576011657715 Z M 21.26233863830566 7.87098217010498 L 6.649394035339355 7.87098217010498 C 5.976852416992188 7.87098217010498 5.431649208068848 7.325778007507324 5.431649208068848 6.653235912322998 C 5.431649208068848 5.98069429397583 5.976852416992188 5.43549108505249 6.649394035339355 5.43549108505249 L 21.26233863830566 5.43549108505249 C 21.93488121032715 5.43549108505249 22.4800853729248 5.98069429397583 22.4800853729248 6.653235912322998 C 22.4800853729248 7.325778007507324 21.93488121032715 7.87098217010498 21.26233863830566 7.87098217010498 Z" fill="#000000" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_na31ak =
    '<svg viewBox="10.2 4.4 14.5 26.1" ><path transform="translate(3.16, 1.35)" d="M 6.999999046325684 29.11482238769531 L 21.50823402404785 29.11482238769531 L 21.50823402404785 8.803293228149414 L 20.05741119384766 8.803293228149414 L 20.05741119384766 6.627058506011963 C 20.05741119384766 4.623888969421387 18.43352127075195 3 16.43035316467285 3 L 12.07788181304932 3 C 10.07471370697021 3 8.450823783874512 4.623889923095703 8.450823783874512 6.627058982849121 L 8.450822830200195 8.803293228149414 L 6.999999046325684 8.803293228149414 L 6.999999046325684 29.11482238769531 Z M 11.3524694442749 6.627058506011963 C 11.3524694442749 6.226424217224121 11.67724800109863 5.901646614074707 12.07788181304932 5.901646614074707 L 16.43035316467285 5.901646614074707 C 16.83098602294922 5.901646614074707 17.15576362609863 6.226425170898438 17.15576362609863 6.627058506011963 L 17.15576362609863 8.803293228149414 L 11.3524694442749 8.803293228149414 L 11.3524694442749 6.627058506011963 Z" fill="#2699fb" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_x35vb =
    '<svg viewBox="27.6 10.2 4.4 20.3" ><path transform="translate(8.57, 3.16)" d="M 19 6.999999046325684 L 19 27.3115291595459 C 21.40380096435547 27.3115291595459 23.35247039794922 25.36286163330078 23.35247039794922 22.95905876159668 L 23.35247039794922 11.3524694442749 C 23.35247039794922 8.948666572570801 21.40380096435547 6.999999046325684 19 6.999999046325684 Z" fill="#2699fb" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_rj3od =
    '<svg viewBox="2.9 10.2 4.4 20.3" ><path transform="translate(0.9, 3.16)" d="M 6.352469921112061 6.999999046325684 C 3.948667287826538 6.999999046325684 1.999999284744263 8.948667526245117 2 11.35247135162354 L 2 22.95905876159668 C 2 25.36286163330078 3.94866681098938 27.3115291595459 6.352469444274902 27.3115291595459 L 6.352469921112061 6.999999046325684 Z" fill="#2699fb" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
