import 'package:flutter/material.dart';

class HeaderDesign extends StatelessWidget{
  const HeaderDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(image: AssetImage("assets/images/1.jpg"),
                  fit: BoxFit.fill,
                  opacity: 0.4
              )
          ),
        ),
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(image: AssetImage("assets/images/user.png"),
                fit: BoxFit.fill,
              )
          ),
        ),
      ],
    );
  }

}