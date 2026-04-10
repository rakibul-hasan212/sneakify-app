import 'package:flutter/material.dart';

import '../../widgets/customWidgets/MyText.dart';

class topCatagoriesList extends StatelessWidget{
    topCatagoriesList({super.key});

    List catogory = ["Casual","Formal","Sprots", "Sandals","Boots"];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: double.maxFinite,
      // color: Colors.green,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              MyText.titleLargeText("Top Catagories",size:22,fontWeightValue: FontWeight.w800,),
              Spacer(),
              MyText.sectionText("View all",textColor: Colors.blue,)
            ],
          ),
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: catogory.length,
                itemBuilder: (context, index){
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        height: 60,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.deepOrange.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(16)
                        ),
                      ),
                      MyText.sectionText(catogory[index],size: 16,)
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }

}