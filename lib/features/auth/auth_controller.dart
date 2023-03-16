
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:dio/dio.dart'as Dio;
import 'package:rcredit_apps/core/network/dio_client.dart';
import 'package:rcredit_apps/core/utils/toast.dart';
import 'package:rcredit_apps/features/auth/model/login_response.dart';
import 'package:rcredit_apps/features/nav/nav_screen.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

 class AuthController extends GetxController{

    final dioClient = DioClient.instance;

   final storage = GetStorage();

   Future login(username, password) async{

        try {
          var formData = Dio.FormData.fromMap({
         "identifier": username,
         "password": password
       });


       final res = await dioClient.post("https://reqres.in/api/login", data:{
         "email": username,
         "password": password
       });
       final loginResponse = LoginResponse.fromJson(res);

       if(loginResponse.status==true){

         final userToken = loginResponse.data!.token.toString();

          saveToken(userToken);

      //Toast.successToast("${loginResponse.message}", "Login SuccessFull");
        // Get.off(NavScreen());

       }else {
         Toast.successToast("${loginResponse.message}", "Login Failed");
       }

     } catch(e) {
          Toast.successToast("${e.toString()}", "${e.toString()}");
        }
   }


   void saveToken(cookie){
     storage.write("user_cookie", cookie);
   }





 }