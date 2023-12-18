import 'package:flutter/material.dart';
import 'package:getx_tutorial_app/model/country_model.dart';
import 'package:svg_flutter/svg.dart';

class CountryCustomView extends StatelessWidget {
  const CountryCustomView({super.key, required this.model,});

  final CountryModel model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 4,
        vertical: 5
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 50, width: 50,child: SvgPicture.network(model.flags!.svg!, fit: BoxFit.contain)),

          Container(
            margin: const EdgeInsets.only(left: 10),
            width: MediaQuery.of(context).size.width * 0.70,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(model.name!.official!, style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700
                ),),

                Text("Commonly known as ${model.name!.common!}", style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700
                ),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
