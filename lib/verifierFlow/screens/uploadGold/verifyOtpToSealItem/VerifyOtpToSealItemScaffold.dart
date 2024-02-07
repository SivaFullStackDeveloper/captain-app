import 'package:captain_app/verifierFlow/screens/uploadGold/verifyOtpToSealItem/view/VerifyOtpToSealItem.dart';
import 'package:flutter/material.dart';


class VerifyOtpToSealItemScaffold extends StatefulWidget {
  const VerifyOtpToSealItemScaffold({Key? key}) : super(key: key);

  @override
  State<VerifyOtpToSealItemScaffold> createState() => _VerifyOtpToSealItemScaffoldState();
}

class _VerifyOtpToSealItemScaffoldState extends State<VerifyOtpToSealItemScaffold> {
  @override
  Widget build(BuildContext context) {
    return VerifyOtpToSealItem();
  }
}
