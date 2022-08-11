import 'dart:convert';

import 'package:dummy/entity/Response.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';



void main(){
  runApp(const Rest());

}

class Rest extends StatelessWidget {
  const Rest({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    DioClient();
    return Container();
  }
}

void DioClient()async{
/*
  try{
  var response =
   await Dio().get("http://10.0.2.2:3000/product/$id");
  var result = ResponseData.fromJson(response)
  print("decoded response: $response");

  print("id:" + result.id.toString());
  print("baslik: " + result.baslik.toString());
  }
  catch(e) {
    print(e);
  }
  */
  var api = 'https://reqres.in/api/users?page=2';
  var result = await Dio().get(api);
  var responseData = ResponseData.fromJson(result.data);
  print(responseData);
  }
