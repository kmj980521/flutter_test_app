import 'package:flutter/material.dart';
import 'package:flutter_app/components/featurred_plants.dart';
import 'package:flutter_app/components/header_with_search.dart';
import 'package:flutter_app/components/recommned_plants.dart';
import 'package:flutter_app/components/title_with_more.dart';
import 'package:flutter_app/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: "Recomended",
            press: () {},
          ),
          RecomendsPlants(),
          TitleWithMoreBtn(
            title:'Featured Plants', press: (){},
          ),
          FeaturePlants(),
          SizedBox(
            height: kDefaultPadding,
          ),
        ],
      ),
    );
  }
}



