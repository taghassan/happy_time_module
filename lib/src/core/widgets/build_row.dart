import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:happy_time_module/src/core/utils/extensions.dart';

class BuildRowWidget extends StatelessWidget {
  final String? value;
  final Widget? valueWidget,labelWidget;
  final String? label;
  final num? labelWidth,valueWidth ;
  final bool isVisible;
  final bool isRow,isError;
  final TextDirection? valueTextDirection,labelTextDirection;
  const BuildRowWidget({super.key,
    this.valueTextDirection,
    this.labelTextDirection,

    this.label,this.isError=false, this.value,this.labelWidth=0.25,this.valueWidth=0.6,this.isVisible=true,this.valueWidget,this.labelWidget,  this.isRow=true});

  @override
  Widget build(BuildContext context) {
    return isVisible? Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.5),
      child:isRow? Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if(label!=null)...[
            Text("$label".tr,style: Theme.of(Get.context!).textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w700,), textDirection: labelTextDirection,).size(width: Get.width * (value!=null||valueWidget!=null?(labelWidth??0.25):0.8)),
          ]else if(labelWidget!=null)...[
            labelWidget!.size(width: Get.width * (value!=null||valueWidget!=null?(labelWidth??0.25):0.8)),
          ],

          if(value!=null)...[
          Text(
            "$value".tr,
            style: Theme.of(Get.context!).textTheme.labelLarge?.copyWith(color: isError==true?Colors.red:null),
            overflow: TextOverflow.visible,
            textDirection: valueTextDirection,
          ).size(width: Get.width * (label!=null?(valueWidth??0.6):0.8) ),
          ]else if(valueWidget!=null)...[
            valueWidget!.size(width: Get.width * (label!=null||labelWidget!=null?(valueWidth??0.6):0.8) ),
          ]

        ],
      ):Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

              if(label!=null)...[

                Text("$label".tr,style: Theme.of(Get.context!).textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w700), textDirection: labelTextDirection,),

              ]else if(labelWidget!=null)...[
                labelWidget??Container(),
              ],

              if(value!=null)...[
                Text(
                  "$value".tr,
                  style: Theme.of(Get.context!).textTheme.labelLarge?.copyWith(color: isError==true?Colors.red:null),
                  overflow: TextOverflow.visible,
                  textDirection: valueTextDirection,
                ),
              ]else if(valueWidget!=null)...[
                valueWidget??Container(),
              ]
        ],
      ),
    ):Container();
  }
}
