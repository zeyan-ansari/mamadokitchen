import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mamadokitchen/models/recepies_model.dart';

import '../Constant.dart';

class WebServices {
  Future<GetAllRecepiesModel?>? getRecpies() async {
    GetAllRecepiesModel? model;
    try {
      var headersData = {
        HttpHeaders.contentTypeHeader: 'application/json',
        'Authorization':
            'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvbWFtYWRvc2tpdGNoZW4uY29tIiwiaWF0IjoxNjMyNjU5NjA2LCJuYmYiOjE2MzI2NTk2MDYsImV4cCI6MTYzMzI2NDQwNiwiZGF0YSI6eyJ1c2VyIjp7ImlkIjoxLCJkZXZpY2UiOiIiLCJwYXNzIjoiNDMyMzJkOTY2OTdmMWViMGMyMmI1ZWFlMjQ5YTg4YjQifX19.7oeCFFQ-9Byjj5YD7_zvY5uWYJDDox-XCaWF3Dby7c8'
      };
      Dio dio = new Dio();
      var response = await dio.get(
        getRecipeUrl,
        options: new Options(headers: headersData),
      );

      debugPrint(response.data.toString());
      if (response.statusCode == 200) {
        model = getAllRecepiesModelFromJson(jsonEncode(response.data));
      }
    } on DioError catch (e) {
      debugPrint(e.message);
      debugPrint(e.response?.statusCode.toString());

      return model;
    }
  }
}
