import 'dart:async';

import 'package:flutter/material.dart';

import '../../widgets/customWidgets/MyText.dart';
import '../home/home_page.dart';

class SplashScreen extends StatefulWidget{
  SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration( seconds: 3) , (){
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => HomePage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 400,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                  image: DecorationImage(
                      image: AssetImage("assets/images/sneakify_clean.jpg"),
                      fit: BoxFit.fill
                  )

                ),
              ),
              //Image.asset("assets/images/sneakify_clean.jpg"),
              SizedBox(height: 10,),
              MyText.titleMediumText("Sneakify",size: 32,fontWeightValue: FontWeight.w800,),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 3,
                    width: 20,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(5)
                    ),
                  ),
                  SizedBox(width: 5,),
                  Container(
                    height: 3,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(5)
                    ),
                  ),
                  SizedBox(width: 5,),
                  Container(
                    height: 3,
                    width: 20,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(5)
                    ),
                  ),
                ],

              )


            ],
          ),
        ),
      ),

    );
  }
}