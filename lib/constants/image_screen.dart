import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:your_guide/constants/app_image_picker.dart';

class ImageScreen extends StatefulWidget {
  static const String routeName='ImageScreen';
  const ImageScreen({super.key});

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  File? image;

  pickImage(ImageSource source) {
    AppImagePicker(source: source).pick(onPick: (File? image) {
      setState(() {
        this.image = image;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CV Form',
          style: TextStyle(
            color: Color(0xff001842),
            fontSize: 20,
            fontFamily: 'Courgette',
          ),
        ),
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xfff5c400),
                Color(0xffffdc5f),
              ])),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color(0XFF001840),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    pickImage(ImageSource.gallery);
                  },
                  child: CircleAvatar(
                      radius: 100,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('assets/img_6.png')),
                ),
                InkWell(
                  onTap: () {
                    pickImage(ImageSource.camera);
                  },
                  child: Icon(Icons.camera_alt),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: const Column(
                children: [
                  TextField(
                    decoration: InputDecoration(labelText: 'First Name',
                        border: UnderlineInputBorder(),
                        focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black54)),
                        labelStyle: TextStyle(color: Colors.black54),
                        icon: ImageIcon(AssetImage('assets/img_5.png')),
                        iconColor: Colors.black54),
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Family Name',
                        border: UnderlineInputBorder(),
                        focusedBorder: UnderlineInputBorder(borderSide:
                        BorderSide(color: Colors.black54)),
                        labelStyle: TextStyle(color: Colors.black54),
                        icon: ImageIcon(AssetImage('assets/img_5.png')),
                        iconColor: Colors.black54),
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Job',
                        border: UnderlineInputBorder(),
                        focusedBorder: UnderlineInputBorder(borderSide:
                        BorderSide(color: Colors.black54)),
                        labelStyle: TextStyle(color: Colors.black54),
                        icon: ImageIcon(AssetImage('assets/img_7.png')),
                        iconColor: Colors.black54),

                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Gender',
                        border: UnderlineInputBorder(),
                        focusedBorder: UnderlineInputBorder(borderSide:
                        BorderSide(color: Colors.black54)),
                        labelStyle: TextStyle(color: Colors.black54),
                        icon: ImageIcon(AssetImage('assets/img_8.png')),
                        iconColor: Colors.black54),
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Nationality',
                        border: UnderlineInputBorder(),
                        focusedBorder: UnderlineInputBorder(borderSide:
                        BorderSide(color: Colors.black54)),
                        labelStyle: TextStyle(color: Colors.black54),
                        icon: ImageIcon(AssetImage('assets/img_9.png')),
                        iconColor: Colors.black54),
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Date of Birth',
                        border: UnderlineInputBorder(),
                        focusedBorder: UnderlineInputBorder(borderSide:
                        BorderSide(color: Colors.black54)),
                        labelStyle: TextStyle(color: Colors.black54),
                        icon: ImageIcon(AssetImage('assets/img_10.png')),
                        iconColor: Colors.black54),
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Phone Number',
                        border: UnderlineInputBorder(),
                        focusedBorder: UnderlineInputBorder(borderSide:
                        BorderSide(color: Colors.black54)),
                        labelStyle: TextStyle(color: Colors.black54),
                        icon: ImageIcon(AssetImage('assets/img_11.png')),
                        iconColor: Colors.black54),
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'E-mail Address',
                        border: UnderlineInputBorder(),
                        focusedBorder: UnderlineInputBorder(borderSide:
                        BorderSide(color: Colors.black54)),
                        labelStyle: TextStyle(color: Colors.black54),
                        icon: ImageIcon(AssetImage('assets/img_12.png')),
                        iconColor: Colors.black54),
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Skills',
                        border: UnderlineInputBorder(),
                        focusedBorder: UnderlineInputBorder(borderSide:
                        BorderSide(color: Colors.black54)),
                        labelStyle: TextStyle(color: Colors.black54),
                        icon: ImageIcon(AssetImage('assets/img_13.png')),
                        iconColor: Colors.black54),
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Experience',
                        border: UnderlineInputBorder(),
                        focusedBorder: UnderlineInputBorder(borderSide:
                        BorderSide(color: Colors.black54)),
                        labelStyle: TextStyle(color: Colors.black54),
                        icon: ImageIcon(AssetImage('assets/img_14.png')),
                        iconColor: Colors.black54),
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Interests',
                        border: UnderlineInputBorder(),
                        focusedBorder: UnderlineInputBorder(borderSide:
                        BorderSide(color: Colors.black54)),
                        labelStyle: TextStyle(color: Colors.black54),
                        icon: ImageIcon(AssetImage('assets/img_15.png')),
                        iconColor: Colors.black54),
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Language',
                        border: UnderlineInputBorder(),
                        focusedBorder: UnderlineInputBorder(borderSide:
                        BorderSide(color: Colors.black54)),
                        labelStyle: TextStyle(color: Colors.black54),
                        icon: ImageIcon(AssetImage('assets/img_16.png')),
                        iconColor: Colors.black54),
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'More Details',
                        border: UnderlineInputBorder(),
                        focusedBorder: UnderlineInputBorder(borderSide:
                        BorderSide(color: Colors.black54)),
                        labelStyle: TextStyle(color: Colors.black54),
                        icon: ImageIcon(AssetImage('assets/img_17.png')),
                        iconColor: Colors.black54),
                  ),
                ],
              ),
            ),
            if (image != null) Image.file(image!)
          ],
        ),
      ),
    );
  }
}
