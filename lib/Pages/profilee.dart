import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  File? _imageFile;
  final ImagePicker _picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    //var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Column(
              children: [
                Container(
                  //height: size.height * 0.3,
                  height: 230,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20)
                    ),
                    color: Colors.white,
                  ),
                ),

                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(0),
                          bottomLeft: Radius.circular(0)
                      ),
                      color: Colors.blue[900],
                    ),
                  ),
                ),
              ],
            ),

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
                                    fontWeight: FontWeight.w800
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 35),
                Stack(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.blue[900],
                      radius: 80,
                      child: CircleAvatar(
                        radius: 73,
                        backgroundImage: _imageFile == null
                            ? AssetImage("assets/png.jpeg")
                            : FileImage(_imageFile!) as ImageProvider,
                      ),
                    ),
                    Positioned(
                      //top: 30,
                      bottom: 10,
                      right: 15,
                      left: 90,
                      child: InkWell(
                          onTap: () {
                            bottomSheet(context);
                          },
                          child: Icon(Icons.camera_alt, color: Colors.black87, size: 20,)),
                    ),
                  ],
                ),

                Text('[NICKNAME]',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600, color: Colors.white),),

                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Row(
                    children: [
                      Container(
                        width: 80,
                        child: Text(
                          'Edit Profile',
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.blue[900],
                              backgroundColor: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 25),
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
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
                                        fontSize: 10,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 3),
                                Padding(
                                  padding: const EdgeInsets.only(left: 32),
                                  child: Text(
                                    'Twin Xevo',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 3),
                                Container(
                                  height: 1,
                                  width: MediaQuery.of(context).size.width,
                                  color: Colors.blueGrey,
                                ),
                              ],
                            ),

                            SizedBox(height: 10),
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
                                        fontSize: 10,
                                        color: Colors.white,
                                        //fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 3),
                                Padding(
                                  padding: const EdgeInsets.only(left: 32),
                                  child: Text(
                                    'test97@gmail.com',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 3),
                                Container(
                                  height: 1,
                                  width: MediaQuery.of(context).size.width,
                                  color: Colors.blueGrey,
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
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
                                        fontSize: 10,
                                        color: Colors.white,
                                        //fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 3),
                                Padding(
                                  padding: const EdgeInsets.only(left: 32),
                                  child: Text(
                                    '09187654239',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 3),
                                Container(
                                  height: 1,
                                  width: MediaQuery.of(context).size.width,
                                  color: Colors.blueGrey,

                                ),

                                SizedBox(height: 10),
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
                                            fontSize: 10,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 3),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 32),
                                      child: Text(
                                        'Refer your friends and family to earn more',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Container(
                                      height: 1,
                                      width: MediaQuery.of(context).size.width,
                                      color: Colors.blueGrey,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            ElevatedButton.icon(
                              onPressed: () {},
                              label: const Text('Log Out'),
                              icon: const Icon(Icons.logout),
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
              child: Text('Change Profile Photo', style: TextStyle(fontSize: 20, color: Colors.blue[900], fontWeight: FontWeight.bold)),
            ),

            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlatButton.icon(
                    icon: Icon(Icons.camera, size: 50, color: Colors.blue[900]),
                    onPressed: () {
                      takePhoto(ImageSource.camera);
                    },
                    label: Text('Camera', style: TextStyle(fontSize: 12, color: Colors.blue[900], fontWeight: FontWeight.bold)),
                  ),
                  FlatButton.icon(
                    icon: Icon(Icons.image, size: 50, color: Colors.blue[900]),
                    onPressed: () {
                      takePhoto(ImageSource.gallery);
                    },
                    label: Text('gallery', style: TextStyle(fontSize: 12, color: Colors.blue[900], fontWeight: FontWeight.bold)),
                  )
                ],
              ),
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
    });
  }
}
