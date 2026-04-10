import 'package:flutter/material.dart';

class bottomNavigationBarDesign extends StatelessWidget {
  const bottomNavigationBarDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 70,
        width: double.maxFinite,
        decoration: BoxDecoration(
            color: Colors.red.withOpacity(0.4),
            borderRadius: BorderRadius.circular(30),
            border: Border.all(width: 1)),
        child: Padding(
          padding: const EdgeInsets.only(left: 10,right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                  onTap: (){
                    ScaffoldMessenger.of(context)
                              .showSnackBar(SnackBar(content: Text("Home is selected")));
                  },
                  child: Icon(Icons.home_outlined,size: 40,color: Colors.black87,)),
              InkWell(
                  onTap: (){
                    ScaffoldMessenger.of(context)
                               .showSnackBar(SnackBar(content: Text("User is selected")));
                  },
                  child: Icon(Icons.person_outline,size: 40,color: Colors.black87,)),
              InkWell( onTap: (){
                ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text("Cart is selected")));
              },child: Icon(Icons.shopping_cart,size: 40,color: Colors.black87,)),
              InkWell(
                  onTap: (){
                    ScaffoldMessenger.of(context)
                              .showSnackBar(SnackBar(content: Text("Favorite is selected")));

                  },
                  child: Icon(Icons.favorite_border_outlined,size: 40,color: Colors.black87,)),
            ],
          ),
        ),
        // child: BottomNavigationBar(
        //   //type: BottomNavigationBarType.fixed,
        //   iconSize: 30,
        //   currentIndex: 0,
        //   backgroundColor: Colors.blueGrey[300],
        //   selectedItemColor: Colors.black87,
        //   unselectedItemColor: Colors.green[700],
        //   items: [
        //     BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.person_outline),
        //       label: "Search",
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.favorite_border_outlined),
        //       label: "Favourite",
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.shopping_cart_outlined),
        //       label: "Cart",
        //     )
        //   ],
        //   onTap: (int index) {
        //     if (index == 0) {
        //       ScaffoldMessenger.of(context)
        //           .showSnackBar(SnackBar(content: Text("Home is selected")));
        //       color:
        //       Colors.black87;
        //     } else if (index == 1) {
        //       ScaffoldMessenger.of(context)
        //           .showSnackBar(SnackBar(content: Text("user is selected")));
        //       color:
        //       Colors.black87;
        //     } else if (index == 2) {
        //       color:
        //       Colors.black87;
        //     } else {
        //       color:
        //       Colors.black87;
        //     }
        //   },
        // )
    );
  }
}


