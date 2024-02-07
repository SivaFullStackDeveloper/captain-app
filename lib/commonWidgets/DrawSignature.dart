import 'dart:typed_data';

import 'package:captain_app/utils/customObject/CustomObject.dart';

import '../constants/ConstantString.dart';
import '../../constants/ConstantAssets.dart';
import '../../constants/ConstantColor.dart';
import '../../constants/ConstantFonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:signature/signature.dart';
import '../utils/commonController/CommonController.dart';

class DrawSignature extends StatefulWidget {
  const DrawSignature({Key? key}) : super(key: key);

  @override
  State<DrawSignature> createState() => _DrawSignatureState();
}

class _DrawSignatureState extends State<DrawSignature> {
 // var handoverShipmentController = Get.put(HandoverShipmentController());
  //late final Uint8List? data2;

  var commonController = Get.put(CommonController());


  final SignatureController controller = SignatureController(
    penStrokeWidth: 2,
    penColor: ConstantColor.whiteColor,
    exportBackgroundColor: ConstantColor.blackColor,
    exportPenColor: ConstantColor.whiteColor,
    onDrawStart: () => print('onDrawStart called!'),
    onDrawEnd: () => print('onDrawEnd called!'),
  );

  @override
  Widget build(BuildContext context) {
    controller.addListener(() => print('Value changed'));

    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          //SIGNATURE CANVAS
          Expanded(
            flex: 9,
            child: Signature(
              controller: controller,
              backgroundColor: ConstantColor.blackColor,
            ),
          ),
          //OK AND CLEAR BUTTONS
          Expanded(
            flex: 1,
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  color: ConstantColor.whiteScreenBackgroundColor),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          ConstantColor.secondaryColor),
                    ),
                    //onPressed: () => {Get.back(), exportImage(context)},
                    onPressed: () => {Get.back(), exportImage(context)},
                    child: Text("Save"),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          ConstantColor.secondaryColor),
                    ),
                    onPressed: () =>
                        {controller.clear()},
                    child: Text("Clear"),
                  ),


                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> exportImage(BuildContext context) async {
    commonController.drawPic.value = true;
    if (controller.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('No content')));
      return;
    }
   // final SvgPicture data = _controller.toSVG()!;
    CustomObject.data = controller.toSVG()!;
    //handoverShipmentController.data2 = handoverShipmentController.controller.toPngBytes()!;

    if (CustomObject.data == null) {
      return;
    }

    print("--------<><  " + CustomObject.data.toString());

    //setState(() {});
    /*  Center(
      tobeReceived: Container(
        height: 200,
        color: Colors.grey[300],
        tobeReceived: Container(color: Colors.grey[300], tobeReceived: data),
      ),
    );*/
  }

/*
  Future<void> exportPNGImage(BuildContext context) async {
    handoverShipmentController.drawPic.value = true;

    if (handoverShipmentController.controller.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('No content')));
      return;
    }

    handoverShipmentController.data2 = await handoverShipmentController.controller.toPngBytes();

    print("============<><>  ");

    if (handoverShipmentController.data2 == null) {
      return;
    }

    *//*await Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(),
            body: Center(
              tobeReceived: Container(
                color: Colors.grey[300],
                tobeReceived: Image.memory(data),
              ),
            ),
          );
        },
      ),
    );*//*
  }*/

}
