import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class VideoSelector extends StatefulWidget {
  const VideoSelector({super.key});
  static const String routeName="VideoSelector";

  @override
  State<VideoSelector> createState() => _VideoSelectorState();
}

class _VideoSelectorState extends State<VideoSelector> {
  File? galleryFile;
  final picker = ImagePicker();
  @override
  Widget build(BuildContext context) {

    // display image selected from gallery
    return Scaffold(
      appBar: AppBar(
        title: Text('Video CV',style: TextStyle(
          color: Color(0xff001842),
          fontSize: 20,
          fontFamily: 'Courgette',
        ),),
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xfff5c400),
                Color(0xffffdc5f),
              ])
          ),
        ),
        leading:  IconButton(
          icon: Icon(Icons.arrow_back,color: Color(0XFF001840),),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Builder(
        builder: (BuildContext context) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _showPicker(context: context);
                  },
                  style: ElevatedButton.styleFrom(
                    maximumSize: Size(300, 200),
                    backgroundColor:Color(0XFF001840),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text('Select video from Gallery and Camera'),
                ),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  height: 200.0,
                  width: 350.0,
                  child: galleryFile == null
                      ? const Center(child: Text('Sorry nothing selected!!'))
                      : Center(child: Text(galleryFile!.path)),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 18.0),

                ),

              ],
            ),
          );
        },
      ),
    );
  }

  void _showPicker({
    required BuildContext context,
  }) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: Wrap(
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text('Gallery'),
                onTap: () {
                  getVideo(ImageSource.gallery);
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo_camera),
                title: const Text('Camera'),
                onTap: () {
                  getVideo(ImageSource.camera);
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Future getVideo(
      ImageSource img,
      ) async {
    final pickedFile = await picker.pickVideo(
        source: img,
        preferredCameraDevice: CameraDevice.front,
        maxDuration: const Duration(minutes: 10));
    XFile? xfilePick = pickedFile;
    setState(
          () {
        if (xfilePick != null) {
          galleryFile = File(pickedFile!.path);
        } else {
          ScaffoldMessenger.of(context).showSnackBar(// is this context <<<
              const SnackBar(content: Text('Nothing is selected')));
        }
      },
    );
  }
}
