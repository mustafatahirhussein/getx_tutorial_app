import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial_app/model/country_model.dart';
import 'package:getx_tutorial_app/view_model/country_controller.dart';

class CountriesView extends StatelessWidget {
  CountriesView({super.key});

  CountryController countryController = Get.put(CountryController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {

        return countryController.isLoading.value ? Center(child: CircularProgressIndicator()) : ListView.builder(
          shrinkWrap: true,
          itemCount: countryController.cList.length,
          itemBuilder: (context, i) {

            CountryModel item = countryController.cList[i];
            return Text(item.name!.official!);
          },
        );
      }),
    );
  }
}
