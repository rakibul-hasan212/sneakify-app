import 'dart:convert';

import 'package:e_commerce_app/core/models/product_info_model.dart';
import'package:http/http.dart' as http;
// this is the raw way to get request perform aita amr practice purpose ee korchi step by step kih kih hy seitar akta idea
class ApiServices{
  final List<ProductInfoModel> posts = [];//respose gular json k akta central list rakha

  //then we have to fetch the data first
 Future fetchData() async{
    final url = Uri.parse("add the api link here");//convert the api endpoints link into Uri
    final response = await http.get(url);// Store the response which comes form the api(3rd party server)
    //validation
    if(response.statusCode ==200){
      print("Sucsess");
      final jsonData = jsonDecode(response.body);//convert the String response to the json format
      final postList = jsonData as List; //then convert the jsondata to list;

      //postList er protita data k central List add korte hbe taholei amra UI te show korate parbo;
      for(var data in postList){
        posts.add(
            ProductInfoModel.fromJson(data));//Models er structure onusare data gula add hbe;
      }// aita holo jokhon akai page sob code korbo tar way
      // Jokhon ami ApiServices ee alada korbo form the main Screen tokhon bellow code ta follow korbe

      //return postList.map(e) => ProductInfoModel.fromJson(e).toList();
    }
    else{
      print("Error");
    }
  }
}