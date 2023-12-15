import 'dart:convert';

import 'package:get/get.dart';
import 'package:getx_tutorial_app/model/country_model.dart';
import 'package:getx_tutorial_app/repository/country_repository.dart';

class CountryController extends GetxController {

  RxBool isLoading = false.obs;
  RxList<dynamic> cList = <dynamic>[].obs;

  CountryRepository repository = CountryRepository();

  @override
  onInit() {
    super.onInit();
    getCountries();
  }

  getCountries() async {
    isLoading.value = true;

    var res = await repository.getCountries();
    List<dynamic> countries = res.map((json) => CountryModel.fromJson(json)).toList();
    cList.value = countries;

    isLoading.value = false;
  }
}