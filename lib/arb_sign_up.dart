import 'package:arbitex/arb_login.dart';
import 'package:arbitex/arb_onboarding.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ArbSignUp extends StatefulWidget {
  ArbSignUp({
    Key? key,
  }) : super(key: key);

  @override
  State<ArbSignUp> createState() => _ArbSignUpState();
}

TextEditingController _nameField = TextEditingController();
TextEditingController _emailField = TextEditingController();
TextEditingController _passwordField = TextEditingController();

class _ArbSignUpState extends State<ArbSignUp> {

  bool _isObscure = true;
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffafafa),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 48.0, end: 0.0),
            child:
                //  layer: 'Login' (group)
                Stack(
              children: <Widget>[
                //  layer: 'Button' (group)
                Stack(
                  children: <Widget>[
                    //  layer: 'Rectangle 120' (shape)
                    Container(
                      child: InkWell(
                        onTap: () {
                          print('Back to login');
                          Navigator.pushReplacement(
                              context, MaterialPageRoute(builder: (_)=> Login()));
                        },
                        child: Material (
                          color: const Color(0xffbce0fd),
                          child: Align(
                            alignment: Alignment(0.003, 0.027),
                            child: SizedBox(
                              width: 32.0,
                              height: 11.0,
                              child:
                              //  layer: 'LOGIN' (text)
                              Text(
                                'LOGIN',
                                style: TextStyle(
                                  fontFamily: 'Arial',
                                  fontSize: 10,
                                  color: const Color(0xff2699fb),
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
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 116.0, middle: 0.5058),
            Pin(size: 11.0, end: 81.0),
            child:
                //  layer: 'Already have an acc…' (text)
                Text(
              'Already have an account?',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 10,
                color: const Color(0xff2699fb),
                height: 2.2,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
              softWrap: false,
            ),
          ),
          Align(
            alignment: Alignment(0.006, 0.493),
            child: SizedBox(
              width: 200.0,
              height: 56.0,
              child:
                  //  layer: 'Social' (group)
                  Stack(
                children: <Widget>[
                  Pinned.fromPins(
                    Pin(size: 56.0, end: 0.0),
                    Pin(start: 0.0, end: 0.0),
                    child:
                        //  layer: 'g+' (group)
                        Stack(
                      children: <Widget>[
                        //  layer: 'Ellipse 41' (shape)
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            border: Border.all(
                                width: 1.0, color: const Color(0xffbce0fd)),
                          ),
                        ),
                        Center(
                          child: SizedBox(
                            width: 16.0,
                            height: 16.0,
                            child:
                                //  layer: 'g+' (group)
                                Stack(
                              children: <Widget>[
                                //  layer: 'Rectangle 121' (shape)
                                Container(
                                  decoration: BoxDecoration(),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 0.0, vertical: 3.0),
                                  child: SizedBox.expand(
                                      child:
                                          //  layer: 'Path 51' (shape)
                                          SvgPicture.string(
                                    _svg_lnfrs0,
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
                  Pinned.fromPins(
                    Pin(size: 56.0, middle: 0.5),
                    Pin(start: 0.0, end: 0.0),
                    child:
                        //  layer: 'twitter' (group)
                        Stack(
                      children: <Widget>[
                        Center(
                          child: SizedBox(
                            width: 16.0,
                            height: 16.0,
                            child:
                                //  layer: 'Symbol 2 – 1' (group)
                                Stack(
                              children: <Widget>[
                                //  layer: 'Rectangle 1457' (shape)
                                Container(
                                  decoration: BoxDecoration(),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 1.0),
                                  child: SizedBox.expand(
                                      child:
                                          //  layer: 'Path 2' (shape)
                                          SvgPicture.string(
                                    _svg_ac18b3,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  )),
                                ),
                              ],
                            ),
                          ),
                        ),
                        //  layer: 'Ellipse 42' (shape)
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            border: Border.all(
                                width: 1.0, color: const Color(0xffbce0fd)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(size: 56.0, start: 0.0),
                    Pin(start: 0.0, end: 0.0),
                    child:
                        //  layer: 'facebook' (group)
                        Stack(
                      children: <Widget>[
                        Center(
                          child: SizedBox(
                            width: 16.0,
                            height: 16.0,
                            child:
                                //  layer: 'Symbol 3 – 1' (group)
                                Stack(
                              children: <Widget>[
                                //  layer: 'Rectangle 1458' (shape)
                                Container(
                                  decoration: BoxDecoration(),
                                ),
                                Pinned.fromPins(
                                  Pin(size: 8.4, middle: 0.5233),
                                  Pin(start: 0.0, end: 0.0),
                                  child:
                                      //  layer: 'Path 1' (shape)
                                      SvgPicture.string(
                                    _svg_sv6mj4,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        //  layer: 'Ellipse 43' (shape)
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            border: Border.all(
                                width: 1.0, color: const Color(0xffbce0fd)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 24.0, end: 24.0),
            Pin(size: 48.0, middle: 0.5687),
            child:
                //  layer: 'Continue' (group)
                Stack(
              children: <Widget>[
                //  layer: 'Rectangle 119' (shape)
                Container(
                  child: InkWell(
                    onTap: () {
                      print('Signup Successful');
                      setState(() {
                        _isLoading = true;
                      });
                      Future.delayed(Duration(seconds: 3), () {
                        setState(() {
                          _isLoading = false;
                        });
                      });
                    },
                    child: Material (
                      color: const Color(0xff2699fb),
                      borderRadius: BorderRadius.circular(4.0),
                      child: Align(
                        alignment: Alignment(0.004, 0.027),
                        child: SizedBox(
                          width: 52.0,
                          height: 11.0,
                          child:
                          _isLoading?
                          CircularProgressIndicator(
                            color: const Color(0xffffffff),
                          ): Text(
                            'CONTINUE',
                            style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 12,
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
          Pinned.fromPins(
            Pin(start: 24.0, end: 24.0),
            Pin(size: 34.0, middle: 0.436),

            //  layer: 'Password' (group)

            child: TextFormField(
              obscureText: _isObscure,
              keyboardType: TextInputType.text,
              controller: _passwordField,
              //onSaved: (input) => requestModel.pass = input!,
              validator: (input) => (input != null && input.length < 6)
                  ? "Password should be more than 5 characters"
                  : null,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                    icon: Icon(_isObscure
                        ? Icons.visibility
                        : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    }),
                hintText: 'j€Lly2₦FI&h!#',
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.lightBlueAccent,
                  ),
                ),
                prefixIcon: const Icon(
                  Icons.lock_outline_rounded,
                ),
              ),
            ),
          ),


          Pinned.fromPins(
            Pin(start: 24.0, end: 24.0),
            Pin(size: 34.0, middle: 0.3254),

            //  layer: 'Email' (group)

            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              controller: _emailField,
              validator: (input) => !(input?.contains('@') ?? false)
                  ? "Email id should be valid"
                  : null,
              decoration: const InputDecoration(
                hintText: 'twinxevo@example.com',
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.lightBlueAccent,
                  ),
                ),
                prefixIcon: Icon(
                  Icons.email_outlined,
                ),
              ),
            ),
          ),

          Pinned.fromPins(
            Pin(start: 24.0, end: 24.0),
            Pin(size: 34.0, middle: 0.2148),
            child: TextFormField(
              keyboardType: TextInputType.text,
              controller: _nameField,
              // validator: (input) => !(input?.contains('@') ?? false)
              //     ? "Email id should be valid"
              //     : null,
              decoration: const InputDecoration(
                hintText: 'Twin Xevo',
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.lightBlueAccent,
                  ),
                ),
                prefixIcon: Icon(
                  Icons.person_outline_sharp,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 68.0, start: 0.0),
            child: InkWell(
              onTap: () {
                print('We done navigate back');
                Navigator.push(
                    context, MaterialPageRoute(builder: (_)=> ArbOnboarding()));
              },

              child: Stack(
                children: <Widget>[
                  Pinned.fromPins(
                    Pin(start: 0.0, end: 0.0),
                    Pin(size: 20.0, start: 0.0),
                    child:
                    //  layer: 'Rectangle 68' (shape)
                    Container(
                      decoration: BoxDecoration(),
                    ),
                  ),
                  //  layer: 'Rectangle 69' (shape)
                  Container(
                    decoration: BoxDecoration(),
                    margin: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                  ),
                  Pinned.fromPins(
                    Pin(size: 16.0, start: 16.0),
                    Pin(size: 16.0, middle: 0.6923),
                    child:
                    //  layer: 'Backward arrow' (group)
                    Stack(
                      children: <Widget>[
                        SizedBox.expand(
                            child:
                            //  layer: 'Path 10' (shape)
                            SvgPicture.string(
                              _svg_itv72r,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            )),
                      ],
                    ),
                  ),
                ],
              ),

            ),
                //  layer: 'Navigation Bar' (group)

          ),
        ],
      ),
    );
  }
}

const String _svg_lnfrs0 =
    '<svg viewBox="0.0 3.0 16.0 10.2" ><path transform="translate(0.0, 3.0)" d="M 16 4.400000095367432 L 16 5.900000095367432 L 14.5 5.900000095367432 L 14.5 7.400000095367432 L 13 7.400000095367432 L 13 5.800000190734863 L 11.5 5.800000190734863 L 11.5 4.400000095367432 L 13 4.400000095367432 L 13 2.900000095367432 L 14.5 2.900000095367432 L 14.5 4.400000095367432 L 16 4.400000095367432 Z M 5.099999904632568 4.400000095367432 L 9.899999618530273 4.400000095367432 C 9.899999618530273 4.700000286102295 10 4.900000095367432 10 5.200000286102295 C 10 8.100000381469727 8.100000381469727 10.20000076293945 5.099999904632568 10.20000076293945 C 2.299999952316284 10.19999980926514 0 7.900000095367432 0 5.099999904632568 C 0 2.299999952316284 2.299999952316284 0 5.099999904632568 0 C 6.5 0 7.599999904632568 0.5 8.5 1.299999952316284 L 7.099999904632568 2.700000047683716 C 6.699999809265137 2.299999952316284 6.099999904632568 1.900000095367432 5.099999904632568 1.900000095367432 C 3.399999856948853 1.900000095367432 1.899999856948853 3.300000190734863 1.899999856948853 5.100000381469727 C 1.899999856948853 6.90000057220459 3.299999713897705 8.300000190734863 5.099999904632568 8.300000190734863 C 7.099999904632568 8.300000190734863 7.899999618530273 6.900000095367432 8 6.100000381469727 L 5.099999904632568 6.100000381469727 L 5.099999904632568 4.400000095367432 Z" fill="#2699fb" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ac18b3 =
    '<svg viewBox="0.0 2.0 16.0 13.0" ><path transform="translate(-38.0, 0.0)" d="M 43.06666564941406 14.97777557373047 C 49.11111068725586 14.97777557373047 52.39999771118164 9.999998092651367 52.39999771118164 5.644444465637207 C 52.39999771118164 5.466666698455811 52.39999771118164 5.377777576446533 52.39999771118164 5.199999809265137 C 53.02222061157227 4.755555629730225 53.5555534362793 4.133333683013916 53.99999618530273 3.51111102104187 C 53.37777328491211 3.777777910232544 52.75555038452148 3.955555438995361 52.13333129882812 4.044444561004639 C 52.84444427490234 3.599999904632568 53.28888702392578 2.977777719497681 53.5555534362793 2.266666889190674 C 52.93333053588867 2.622222185134888 52.22222137451172 2.888888597488403 51.5111083984375 3.066666603088379 C 50.88888549804688 2.355555534362793 49.99999618530273 2 49.11111068725586 2 C 47.33333206176758 2 45.82221984863281 3.511110782623291 45.82221984863281 5.288888454437256 C 45.82221984863281 5.555554866790771 45.82221984863281 5.822221279144287 45.91110610961914 5.999999523162842 C 43.15555572509766 5.822221755981445 40.75555419921875 4.57777738571167 39.15555572509766 2.53333306312561 C 38.88888931274414 2.977777481079102 38.71110916137695 3.599999666213989 38.71110916137695 4.222221851348877 C 38.71110916137695 5.377777576446533 39.33333206176758 6.355555057525635 40.13333129882812 6.977777004241943 C 39.59999847412109 6.977777004241943 39.06666564941406 6.799999237060547 38.62221908569336 6.533332824707031 C 38.62221908569336 6.533332824707031 38.62221908569336 6.533332824707031 38.62221908569336 6.533332824707031 C 38.62221908569336 8.133332252502441 39.77777481079102 9.46666431427002 41.28888702392578 9.733331680297852 C 41.02222061157227 9.822220802307129 40.75555419921875 9.822220802307129 40.39999771118164 9.822220802307129 C 40.22221755981445 9.822220802307129 39.95555114746094 9.822220802307129 39.77777481079102 9.733331680297852 C 40.22221755981445 11.06666469573975 41.37777328491211 11.95555305480957 42.88888549804688 12.04444122314453 C 41.73332977294922 12.93333053588867 40.31110763549805 13.46666431427002 38.79999923706055 13.46666431427002 C 38.53333282470703 13.46666431427002 38.26666641235352 13.46666431427002 37.99999618530273 13.37777423858643 C 39.42222213745117 14.44444179534912 41.19999694824219 14.97777557373047 43.06666564941406 14.97777557373047" fill="#2699fb" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_sv6mj4 =
    '<svg viewBox="4.0 0.0 8.4 16.0" ><path transform="translate(-76.0, 0.0)" d="M 85.42222595214844 16 L 85.42222595214844 8.711111068725586 L 87.91111755371094 8.711111068725586 L 88.26667785644531 5.8666672706604 L 85.42222595214844 5.8666672706604 L 85.42222595214844 4.088889122009277 C 85.42222595214844 3.288889169692993 85.68890380859375 2.666667222976685 86.84445190429688 2.666667222976685 L 88.35556030273438 2.666667222976685 L 88.35556030273438 0.08888889104127884 C 88 0.08888889104127884 87.11111450195312 0 86.13333129882812 0 C 84 0 82.4888916015625 1.333333373069763 82.4888916015625 3.733333110809326 L 82.4888916015625 5.866666793823242 L 80 5.866666793823242 L 80 8.711111068725586 L 82.4888916015625 8.711111068725586 L 82.4888916015625 16 L 85.42222595214844 16 Z" fill="#2699fb" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_fy8d8n =
    '<svg viewBox="1.0 0.0 14.0 16.0" ><path transform="translate(1.0, 0.0)" d="M 7 8 C 8.100000381469727 8 9 8.899999618530273 9 10 C 9 11.10000038146973 8.100000381469727 12 7 12 C 5.899999618530273 12 5 11.10000038146973 5 10 C 5 8.899999618530273 5.900000095367432 8 7 8 Z M 7 2 C 5.900000095367432 2 5 2.900000095367432 5 4 L 9 4 C 9 2.900000095367432 8.100000381469727 2 7 2 Z M 12 16 L 2 16 C 0.8999999761581421 16 0 15.10000038146973 0 14 L 0 6 C 0 4.900000095367432 0.8999999761581421 4 2 4 L 3 4 C 3 1.799999952316284 4.800000190734863 0 7 0 C 9.199999809265137 0 11 1.799999952316284 11 4 L 12 4 C 13.10000038146973 4 14 4.900000095367432 14 6 L 14 14 C 14 15.10000038146973 13.10000038146973 16 12 16 Z" fill="#2699fb" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_amc36 =
    '<svg viewBox="0.0 0.0 16.0 12.0" ><path  d="M 14 2 L 2 2 L 8 7 L 14 2 Z M 0 2 C 0 0.8999999761581421 0.8999999761581421 0 2 0 L 14 0 C 15.10000038146973 0 16 0.8999999761581421 16 2 L 16 10 C 16 11.10000038146973 15.10000038146973 12 14 12 L 2 12 C 0.8999999761581421 12 0 11.10000038146973 0 10 L 0 2 Z" fill="#2699fb" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_am9urc =
    '<svg viewBox="-6120.0 -16080.0 16.0 6.0" ><path transform="translate(-6120.0, -16090.0)" d="M 8 10 C 3.599999904632568 10 0 11.80000019073486 0 14 L 0 16 L 16 16 L 16 14 C 16 11.80000019073486 12.39999961853027 10 8 10 Z" fill="#2699fb" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_itv72r =
    '<svg viewBox="0.0 0.0 16.0 16.0" ><path transform="matrix(-1.0, 0.0, 0.0, -1.0, 16.0, 16.0)" d="M 8 0 L 6.545454978942871 1.454545497894287 L 12.05194854736328 6.961039066314697 L 0 6.961039066314697 L 0 9.038961410522461 L 12.05194854736328 9.038961410522461 L 6.545454978942871 14.54545497894287 L 8 16 L 16 8 L 8 0 Z" fill="#2699fb" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
