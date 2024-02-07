// ignore_for_file: prefer_const_constructors

import 'package:captain_app/verifierFlow/screens/detail/view/VerifierDetailScreen.dart';
import 'package:flutter/material.dart';

import '../../../utils/SizeConfig.dart';

class DetailScreenScaffold extends StatefulWidget {
  const DetailScreenScaffold({super.key});

  @override
  State<DetailScreenScaffold> createState() => _DetailScreenScaffoldState();
}

class _DetailScreenScaffoldState extends State<DetailScreenScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VerifierDetailScreen(),
    );
  }
}
