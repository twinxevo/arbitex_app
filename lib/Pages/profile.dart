//import 'dart:html';
import 'dart:io';

import 'package:universal_html/html.dart' as html;
//import 'dart:io';

import 'package:flutter/cupertino.dart';
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  //late PickedFile _imageFile;
  File? _imageFile;
  final ImagePicker _picker = ImagePicker();
  //late File _image;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
               //height: size.height * 1.0,
               //height: 1100,
               //width: MediaQuery.of(context).size.width,
               decoration: BoxDecoration(
             borderRadius: BorderRadius.only(
                 bottomRight: Radius.circular(0),
                 bottomLeft: Radius.circular(0)),
             color: Colors.blue[900],
               ),
            ),
            Container(
              height: size.height * .41,
              //width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20)),
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 65,
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
                                      'Profile   ‍🕵🏽‍♂️',
                                      style: TextStyle(
                                          color: Colors.blue[900],
                                          fontSize: 20,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  ),
                                ],
                              ),

                              //Icon(Icons.more_vert_outlined, color: Colors.white,),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15),

                      Stack(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.blue[900],
                            radius: 100,
                            child: CircleAvatar(
                                radius: 90,
                                //backgroundImage: AssetImage("assets/png.jpeg"),
                                backgroundImage: _imageFile == null
                                    ? AssetImage("assets/png.jpeg")
                                : FileImage(_imageFile!) as ImageProvider,
                                //    : FileImage(File(_imageFile.path)),
                                // backgroundImage: (_imageFile != null)
                                      //:Image.file(_imageFile!) as ImageProvider
                                //     : const AssetImage("assets/png.jpeg")
                              ),
                          ),
                          Positioned(
                            bottom: 10,
                            right: 15,
                            left: 110,
                            child: InkWell(
                                onTap: () {
                                  bottomSheet(context);
                                },
                                child: Icon(Icons.camera_alt, color: Colors.white, size: 30,)),
                          ),
                        ],
                      ),

                      // Container(
                      //   child: Column(
                      //     children: [
                      //       Container(
                      //         height: 120,
                      //         width: 120,
                      //         //width: MediaQuery.of(context).size.width,
                      //         decoration: BoxDecoration(
                      //           borderRadius: BorderRadius.only(
                      //               bottomRight: Radius.circular(60),
                      //               topLeft: Radius.circular(60),
                      //               topRight: Radius.circular(60),
                      //               bottomLeft: Radius.circular(60)),
                      //           color: Colors.blue,
                      //         ),
                      //       ),
                      //       SizedBox(height: 10),
                      //       Text('[NAME]',
                      //         style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.blue[900]),),
                      //       //Icon(Icons.edit),
                      //       ],
                      //   ),
                      // ),

                      SizedBox(height: 10),
                      Text('[NICKNAME]',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.blue[900]),),

                    ],
                  ),
                  SizedBox(height: 40),
                  Row(
                    children: [
                      Container(
                        width: 80,
                        //color: Colors.white,
                        child: Text(
                          'Edit Profile',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.blue[900],
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Icon(
                        Icons.edit,
                        color: Colors.blue[900],
                        size: 15,
                      ),
                    ],
                  ),
                  SizedBox(height: 80),
                  Container(
                    child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.person_pin, color: Colors.white70),
                            SizedBox(width: 7),
                            Text(
                              'Full Name',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                //fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(left: 32),
                          child: Text(
                            'Twin Xevo',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Container(
                          height: 1,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.blueGrey,
                        ),
                      ],
                    ),

                    SizedBox(height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.email, color: Colors.white70),
                            SizedBox(width: 7),
                            Text(
                              'Email',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                //fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(left: 32),
                          child: Text(
                            'test97@gmail.com',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Container(
                          height: 1,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.blueGrey,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.smartphone_outlined,
                                color: Colors.white70),
                            SizedBox(width: 7),
                            Text(
                              'Mobile',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                //fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(left: 32),
                          child: Text(
                            '09187654239',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: 1,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.blueGrey,
                        ),
                      ],
                    ),

                  ],
                    ),
                  ),


                  SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.family_restroom,
                              color: Colors.white70),
                          SizedBox(width: 7),
                          Text(
                            'Referral Programme',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              //fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 32),
                        child: Text(
                          'Refer your friends and family to earn more',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 1,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.blueGrey,
                      ),
                    ],
                  ),

                  SizedBox(height: 30),
                  ElevatedButton.icon(
                    onPressed: () {},
                    label: const Text('Log Out'),
                    icon: const Icon(Icons.logout),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void bottomSheet(context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        height: 200,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(25), topLeft: Radius.circular(25))),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Change Profile Photo', style: TextStyle(fontSize: 25, color: Colors.blue[900], fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton.icon(
                  icon: Icon(Icons.camera, size: 60, color: Colors.blue[900]),
                  onPressed: () {
                    takePhoto(ImageSource.camera);
                  },
                  label: Text('Camera', style: TextStyle(fontSize: 18, color: Colors.blue[900], fontWeight: FontWeight.bold)),
                ),
                FlatButton.icon(
                  icon: Icon(Icons.image, size: 60, color: Colors.blue[900]),
                  onPressed: () {
                    takePhoto(ImageSource.gallery);
                  },
                  label: Text('gallery', style: TextStyle(fontSize: 18, color: Colors.blue[900], fontWeight: FontWeight.bold)),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  void takePhoto(ImageSource source) async {
    var pickFile = await _picker.getImage(
      source: source,
    );
    setState(() {
      _imageFile = File(pickFile!.path);
      //_imageFile = pickFile! as File;
      //_imageFile = pickFile!;
    });
  }
}
