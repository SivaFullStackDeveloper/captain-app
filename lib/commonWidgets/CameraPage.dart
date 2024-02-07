import 'dart:io';

import 'package:captain_app/utils/commonController/CommonController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_camera/flutter_camera.dart';
import 'package:get/get.dart';
import '../utils/customObject/CustomObject.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({Key? key}) : super(key: key);

  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {

  var commonController = Get.put(CommonController());


  @override
  Widget build(BuildContext context) {
    return FlutterCamera(
      color: Colors.amber,
      /*onImageCaptured: (value) {
        final path = value.path;
        print("::::::::::::::::::::::::::::::::: $path");
        if (path.contains('.jpg')) {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: Image.file(File(path)),
                );
              });
        }
      },*/
      onVideoRecorded: (value) {
        final path = File(value.path);
        CustomObject.videoPath = value.path;

        print('::::::::::::::::::::::::;; dkdkkd $path');
        commonController.getAwsVideoUrlFunction(path);
        //uploadVideoFunction(path);
      },
    );
    // return Container();
  }




}