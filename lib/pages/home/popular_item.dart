import 'package:flutter/material.dart';

import '../../widgets/customWidgets/MyText.dart';
import '../product_description_page/product_description_page.dart';

class popularProduct extends StatelessWidget{
  popularProduct({super.key});

  List popularItems = ["Casual1","Formal10","Sprots25","Slipper6","Boots2","Casual7"];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 285,
      width: double.maxFinite,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                MyText.titleLargeText("Popular Items",size:22,fontWeightValue: FontWeight.w800,),
                Spacer(),
                MyText.sectionText("View all",textColor: Colors.blue,)
              ],
            ),
            ///GridView
            Expanded(
              child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      mainAxisExtent: 240
                  ),
                  itemCount: popularItems.length,
                  itemBuilder: (context, index){
                    return GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDescreptionPage(productname: popularItems[index])));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.deepOrange.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(16)
                        ),
                        child: Center(child: MyText.sectionText(popularItems[index],size: 16,)),
                      ),
                    );

                  }),
            )

          ],

        )
    );
  }
}