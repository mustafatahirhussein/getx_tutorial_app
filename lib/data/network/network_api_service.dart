import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial_app/data/network/base_api_service.dart';
import 'package:getx_tutorial_app/model/country_model.dart';
import 'package:http/http.dart' as http;

String url = "https://restcountries.com/v3.1/all?fields=name,flags";

class NetworkApiService extends BaseApiService {
  @override
  Future<void> get() async {
    dynamic jsonResponse;

    http.Response res = await http.get(Uri.parse(url)).timeout(Duration(seconds: 3), onTimeout: () {
      print("called 1 2 3");
      // Get.dialog(Column(
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   children: [
      //     Text("Internet connection check")
      //   ],
      // ));
      return Future.value();
    },
   );
    jsonResponse = jsonOutput(res);

    return jsonResponse;
  }

  dynamic jsonOutput(http.Response res) {
    switch(res.statusCode) {
      case 200:
        List<dynamic> jsonList = json.decode(res.body);
        return jsonList;

      default:
        throw Exception();
    }
  }
}