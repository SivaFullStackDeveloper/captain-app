import 'package:captain_app/utils/commonController/CommonController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../constants/ConstantColor.dart';
import '../../../../../constants/ConstantFonts.dart';
import '../../../../../res/Dimens.dart';
import '../../../../../utils/SizeConfig.dart';
import '../deliveryFlow/screens/reports/controller/DeliveryReportsController.dart';

class ReportStageListWidget extends StatefulWidget {
  ReportStageListWidget(
      {Key? key, this.title,this.index})
      : super(key: key);
  final index;
  final title;
  var indexValue;

  @override
  State<ReportStageListWidget> createState() => _ReportStageListWidgetState();
}

class _ReportStageListWidgetState extends State<ReportStageListWidget> {
  var deliveryReportsController = Get.put(DeliveryReportsController());
  //var commonController = Get.put(CommonController());

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ///---------------------------- CheckBox -----------------------------
          Padding(
            padding: EdgeInsets.only(
              left: SizeConfig.defaultSize * Dimens.size1,
            ),
            child: Checkbox(
              activeColor: ConstantColor.secondaryColor,
              value: deliveryReportsController.value.value,
              onChanged: (value) {
                setState(() {
                  deliveryReportsController.value.value = value!;
                  if(value == true){
                    deliveryReportsController.stageTitleList.add(widget.title);
                  }else{
                    deliveryReportsController.stageTitleList.removeWhere((item) => widget.title == item);
                  }

                }
                );
              },
            ),
          ),

          Padding(
            padding: EdgeInsets.only(
              top: SizeConfig.defaultSize * Dimens.size2,
              bottom: SizeConfig.defaultSize * Dimens.size2,
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(
                        fontFamily: ConstantFonts.poppinsMedium,
                        fontSize: SizeConfig.defaultSize *
                            Dimens.size1Point5,
                        color: ConstantColor.secondaryColor,
                        fontWeight: FontWeight.w900),
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
