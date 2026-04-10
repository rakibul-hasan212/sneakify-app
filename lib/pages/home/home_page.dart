import 'package:e_commerce_app/pages/home/popular_item.dart';
import 'package:e_commerce_app/pages/home/search_with_icon_design.dart';
import 'package:e_commerce_app/pages/home/top_catagories.dart';
import 'package:flutter/material.dart';

import '../../widgets/bottomNavigation/bottom_navigation_bar.dart';
import '../../widgets/customWidgets/MyText.dart';
import '../../widgets/customWidgets/header_design.dart';
import 'banner_design.dart';

class HomePage extends StatelessWidget{
   HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //header Row start
              HeaderDesign(),
              //header Row end
              SizedBox(height: 10,),
              //Search with Icon start
              searchWithIconDesign(),
              SizedBox(height: 10,),
              //banner part
              bannerDesign(),
              SizedBox(height: 10,),
              //top catagories
              topCatagoriesList(),
              SizedBox(height: 10,),
              //popularItems
              popularProduct(),
              Spacer(),
              bottomNavigationBarDesign()
            ],

          ),
        )
      
        
      ),
    );
  }
}