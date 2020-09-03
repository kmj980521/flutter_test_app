import 'package:flutter/material.dart';
import 'package:flutter_app/constants.dart';

class FeaturePlants extends StatelessWidget {
  const FeaturePlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeautrePlantCard(image: 'assets/images/bottom_img_1.png', press: (){ print('heelo');},),
          FeautrePlantCard(image: 'assets/images/bottom_img_2.png', press: (){ print('heelo');},),
        ],
      ),
    );
  }
}

class FeautrePlantCard extends StatelessWidget {
  const FeautrePlantCard({
    Key key, this.image, this.press,

  }) : super(key: key);

  final String image;
  final Function press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(left:kDefaultPadding, top: kDefaultPadding/2, bottom: kDefaultPadding / 4),
        width: size.width*0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(image),
            fit:BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
