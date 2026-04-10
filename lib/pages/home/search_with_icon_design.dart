import 'package:flutter/material.dart';

import '../../widgets/customWidgets/MyText.dart';

class searchWithIconDesign extends StatelessWidget {
  const searchWithIconDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 50,
          width: 310,
          decoration: BoxDecoration(
              // color: Colors.green,
              border: Border.all(width: 1, color: Colors.grey),
              borderRadius: BorderRadius.circular(14)),
          child: TextFormField(
            controller: TextEditingController(),
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search",
                hintStyle: TextStyle(fontSize: 18, color: Colors.grey),
                prefixIcon: Icon(
                  Icons.search_outlined,
                  color: Colors.grey,
                )),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Container(
          height: 50,
          width: 60,
          //padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            // color: Colors.green,
            border: Border.all(
                width: 1,
                color: Colors.grey),
            borderRadius: BorderRadius.circular(14),
          ),
          child: Icon(
            Icons.notifications_active,
            size: 35,
            color: Colors.red.withOpacity(0.8),
          ),
        ),
      ],
    );
  }
}
