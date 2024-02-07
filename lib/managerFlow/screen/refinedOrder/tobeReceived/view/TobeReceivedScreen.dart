import 'package:captain_app/commonWidgets/ActionBar.dart';
import 'package:captain_app/res/Dimens.dart';
import 'package:captain_app/utils/SizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/TobeReceivedCardView.dart';

class TobeReceivedScreen extends StatefulWidget {
  const TobeReceivedScreen({Key? key}) : super(key: key);

  @override
  State<TobeReceivedScreen> createState() =>
      _TobeReceivedScreenState();
}

class _TobeReceivedScreenState extends State<TobeReceivedScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: SizeConfig.defaultSize * Dimens.size1Point8,
            right: SizeConfig.defaultSize * Dimens.size1Point8,
          ),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            ///------------------- Action Bar ---------------------
            Expanded(
              flex: 1,
              child: ActionBar(
                title: "To Be Refined",
              ),
            ),

            Expanded(
              flex: 9,
              child: Padding(
                padding: EdgeInsets.only(
                  top: SizeConfig.defaultSize * Dimens.size1,
                ),
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 10,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return const TobeReceivedCardView(
                      id: "item.id",
                      orderId: "BKS 123245",
                      pickupTime: "14-09-2022",
                      pickupDate: "8:00PM",
                    );
                  },
                ),
              ),
            ),
          ]),
        ));
  }
}
