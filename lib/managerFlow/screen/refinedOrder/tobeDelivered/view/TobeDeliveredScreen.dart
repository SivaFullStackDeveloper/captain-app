import 'package:captain_app/commonWidgets/ActionBar.dart';
import 'package:captain_app/res/Dimens.dart';
import 'package:captain_app/utils/SizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/TobeDeliveredCardView.dart';

class TobeDeliveredScreen extends StatefulWidget {
  const TobeDeliveredScreen({Key? key}) : super(key: key);

  @override
  State<TobeDeliveredScreen> createState() =>
      _TobeDeliveredScreenState();
}

class _TobeDeliveredScreenState extends State<TobeDeliveredScreen> {
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
                title: "To Be Delivered",
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
                    return const TobeDeliveredCardView(
                      id: "item.id",
                      orderId: "BKS 123245",
                      canceledOn: "14-09-2022 8:00PM",
                      handedOverOn: "14-09-2022 8:00PM",
                    );
                  },
                ),
              ),
            ),
          ]),
        ));
  }
}
