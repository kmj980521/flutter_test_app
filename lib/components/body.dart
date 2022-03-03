import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/components/featurred_plants.dart';
import 'package:flutter_app/components/header_with_search.dart';
import 'package:flutter_app/components/menu_Row.dart';
import 'package:flutter_app/components/recommned_plants.dart';
import 'package:flutter_app/components/title_with_more.dart';
import 'package:flutter_app/constants.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:icofont_flutter/icofont_flutter.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Header(size: size),
          TitleWithMoreBtn(
            title: "카테고리",
            press: () {},
          ),
          rowMenu(
            size: size,
            menu1: "치킨&피자",
            menu2: "술집",
            menu3: "카페",
            menu4: "한식",
            menu1_Icon: Icon(IcoFontIcons.chickenFry,size: 50,),
            menu2_Icon: Icon(IcoFontIcons.beer,size:50),
            menu3_Icon: Icon(IcoFontIcons.coffeeMug,size:50),
            menu4_Icon: Icon(MdiIcons.rice,size:50),
          ),
          rowMenu(
            size: size,
            menu1: "야식",
            menu2: "고깃집",
            menu3: "중식",
            menu4: "패스트푸드",
            menu1_Icon: Icon(LineAwesomeIcons.moon,size: 50,),
            menu2_Icon: Icon(IcoFontIcons.steak,size:50),
            menu3_Icon: Icon(IcoFontIcons.noodles,size:50),
            menu4_Icon: Icon(IcoFontIcons.burger,size:50),
          ),
          rowMenu(
            size: size,
            menu1: "학식",
            menu2: "편의점, 마트",
            menu3: "노래&PC방",
            menu4: "편의시설",
            menu1_Icon: Icon(CommunityMaterialIcons.school,size: 50,), //FontAwesomeIcons.school
            menu2_Icon: Icon(Icons.local_convenience_store,size:50),
            menu3_Icon: Icon(MdiIcons.microphoneVariant,size:50),
            menu4_Icon: Icon(MdiIcons.bank,size:50),
          ),

          RecomendsPlants(),
          TitleWithMoreBtn(
            title:'테스트 2', press: (){},
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





