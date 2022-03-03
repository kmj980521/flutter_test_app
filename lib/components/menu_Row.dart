import 'package:flutter/material.dart';
import 'package:flutter_app/constants.dart';

class rowMenu extends StatelessWidget {
  const rowMenu({
    Key key,
    @required this.size, this.menu1, this.menu2, this.menu3, this.menu1_Icon, this.menu2_Icon, this.menu3_Icon, this.menu4, this.menu4_Icon,
  }) : super(key: key);

  final Size size;
  final String menu1,menu2,menu3,menu4;
  final Icon menu1_Icon,menu2_Icon,menu3_Icon,menu4_Icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          menuCard(size: size,menuName: menu1,menuIcon: menu1_Icon,),
          menuCard(size: size,menuName: menu2,menuIcon: menu2_Icon,),
          menuCard(size: size,menuName: menu3,menuIcon: menu3_Icon,),
          menuCard(size: size,menuName: menu4,menuIcon: menu4_Icon,),
        ],
      ),
    );
  }
}

class menuCard extends StatelessWidget {
  const menuCard({
    Key key,
    @required this.size, this.menuName, this.menuIcon,
  }) : super(key: key);

  final Size size;
  final String menuName;
  final Icon menuIcon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        print('hello');
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 50,
                  color: kPrimaryColor.withOpacity(0.23))
            ]),
        margin: EdgeInsets.only(
            left:5,
            top:5,
            bottom:0
        ),
        width: size.width * 0.22,
        height:size.width * 0.22,
        child: Column(
          children: [
            Container(
              width:size.width * 0.22,
              height: size.height*0.08,
              child: Center(
                child: Padding(

                  padding: const EdgeInsets.only(bottom:5,),
                  child: menuIcon,
                ),
              ),
            ),
            Container(
                width: size.width*0.22,
                height: size.width * 0.05,
                child: Center(child: Text('$menuName',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),))),
          ],
        ),
      ),
    );
  }
}