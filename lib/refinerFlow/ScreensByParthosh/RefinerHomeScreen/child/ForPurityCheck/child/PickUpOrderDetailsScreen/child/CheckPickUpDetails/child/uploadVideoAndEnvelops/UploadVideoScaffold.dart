import 'package:captain_app/refinerFlow/ScreensByParthosh/RefinerHomeScreen/child/ForPurityCheck/child/PickUpOrderDetailsScreen/child/CheckPickUpDetails/child/uploadVideoAndEnvelops/view/UploadVideo.dart';
import 'package:flutter/material.dart';




class UploadVideoScaffold extends StatefulWidget {
  const UploadVideoScaffold({Key? key}) : super(key: key);

  @override
  State<UploadVideoScaffold> createState() => _UploadVideoScaffoldState();
}

class _UploadVideoScaffoldState extends State<UploadVideoScaffold> {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: UploadVideo(),
    );
  }
}
