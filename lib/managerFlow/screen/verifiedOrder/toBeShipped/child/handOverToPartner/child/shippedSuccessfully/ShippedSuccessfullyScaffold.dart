import 'package:captain_app/managerFlow/screen/verifiedOrder/toBeShipped/child/handOverToPartner/child/shippedSuccessfully/view/ShippedSuccessfully.dart';
import 'package:flutter/material.dart';

class ShippedSuccessfullyScaffold extends StatefulWidget {
  const ShippedSuccessfullyScaffold({Key? key}) : super(key: key);

  @override
  State<ShippedSuccessfullyScaffold> createState() =>
      _ShippedSuccessfullyScaffoldState();
}

class _ShippedSuccessfullyScaffoldState
    extends State<ShippedSuccessfullyScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ShippedSuccessfully(),
    );
  }
}
