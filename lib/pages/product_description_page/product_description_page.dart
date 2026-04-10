import 'package:flutter/material.dart';

import '../../widgets/customWidgets/MyText.dart';

class ProductDescreptionPage extends StatelessWidget{

  String productname;
  var availableColors = ["red","black","white","green"];
  var avalableSize = ["38","40","41","42"];
  ProductDescreptionPage({super.key,required this.productname});


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 60,
          leading: InkWell(
              onTap:(){
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios_outlined,size: 32,)),
          actions: [
            Icon(Icons.add,size: 32,)
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 250,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.deepOrange.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(14)
                ),
                child: Column(
                  children: [
                    MyText.titleMediumText(productname),
                    Container(
                      height: 150,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 1,color: Colors.black87),
                        borderRadius: BorderRadius.circular(14)
                      ),
                      child: MyText.titleMediumText("Set the Clicked image later"),
                      ),
                    SizedBox(height: 10,),
                    Expanded(
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: availableColors.length,
                          itemBuilder: (context, index){
                            return Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              height: 45,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.deepOrange,
                                borderRadius: BorderRadius.circular(25)
                              ),
                              child: Center(child: MyText.bodyLargeText(availableColors[index],textColor: Colors.white,)),
                            );
                        
                      }),
                    )
                  ],
                ),

              ),
              SizedBox(height: 40,),
              Center(child: Container(height: 4,width: 50,color: Colors.grey.withOpacity(0.7),)),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyText.titleMediumText("Title: "+productname,fontWeightValue: FontWeight.w800,),
                  MyText.titleMediumText("ProductPrice",fontWeightValue: FontWeight.w800,),
                ],

              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MyText.titleMediumText("Ratings",fontWeightValue: FontWeight.w800,),
                ],
              ),
              SizedBox(height: 30,),
              MyText.titleMediumText("Available Size",fontWeightValue: FontWeight.w800,),
              SizedBox(height: 10,),
              Container(
                height: 42,
                width: double.maxFinite,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: avalableSize.length,
                    itemBuilder: (context, index){
                      return Container(
                        height: 40,
                        width: 40,
                        margin: EdgeInsets.only(left:40),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(width: 1,color: Colors.black87),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(child: MyText.bodyLargeText(avalableSize[index],textColor: Colors.red,)),
                      );

                }),
              ),
              SizedBox(height: 20,),
              MyText.titleMediumText("Description",fontWeightValue: FontWeight.w800,),
              SizedBox(height: 40,),
              Spacer(),
              //Add to cart button create
              GestureDetector(
                onTap: (){
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Apply the functionality Later for go to Cart Page")));
                },
                child: Center(
                  child: Container(
                    height: 60,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(16)
                    ),
                    child: Center(child: MyText.buttonText("Add to Cart",size: 20,)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }}