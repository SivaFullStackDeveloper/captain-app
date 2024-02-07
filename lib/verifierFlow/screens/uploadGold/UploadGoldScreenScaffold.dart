import 'package:captain_app/verifierFlow/screens/uploadGold/view/UploadGoldScreen.dart';
import 'package:flutter/material.dart';

import '../../../utils/SizeConfig.dart';

class UploadGoldScreenScaffold extends StatefulWidget {
  const UploadGoldScreenScaffold({Key? key}) : super(key: key);

  @override
  State<UploadGoldScreenScaffold> createState() =>
      _UploadGoldScreenScaffoldState();
}

class _UploadGoldScreenScaffoldState extends State<UploadGoldScreenScaffold> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: UploadGoldScreen(),
    );
  }
}
