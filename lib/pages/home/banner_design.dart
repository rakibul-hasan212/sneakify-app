import 'package:flutter/material.dart';

import '../../widgets/customWidgets/MyText.dart';

class bannerDesign extends StatelessWidget{
  const bannerDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: double.maxFinite,
      decoration: BoxDecoration(
          color: Colors.deepOrange.withOpacity(0.3),
          borderRadius: BorderRadius.circular(16)
      ),
      child: Center(child: MyText.sectionText("Here Add a Banner")),

    );
  }

}