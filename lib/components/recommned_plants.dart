import 'package:flutter/material.dart';
import 'package:flutter_app/constants.dart';
import 'package:flutter_app/details/details_screen.dart';

class RecomendsPlants extends StatelessWidget {
  const RecomendsPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendPlantCard(
            image: 'assets/images/hufs_logo.jpg',
            title: '1',
            country: 'Russia',
            icon: Icon(Icons.flag),
            press : (){
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context)=>DetailsScreen())
                );
            },
            price: 440,
          ),
          RecomendPlantCard(
            image: 'assets/images/hufs_logo.jpg',
            title: '2',
            country: 'Russia',
            icon: Icon(Icons.backspace),
            press : (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context)=>DetailsScreen())
              );
            },
            price: 440,
          ),
          RecomendPlantCard(
            image: 'assets/images/hufs_logo.jpg',
            title: '3',
            country: 'Russia',
            icon: Icon(Icons.sentiment_satisfied),
            press : (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context)=>DetailsScreen())
              );
            },
            price: 440,
          ),
          RecomendPlantCard(
            image: 'assets/images/hufs_logo.jpg',
            title: '4',
            country: 'Russia',
            icon: Icon(Icons.business),
            press : (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context)=>DetailsScreen())
              );
            },
            price: 440,
          ),
          RecomendPlantCard(
            image: 'assets/images/hufs_logo.jpg',
            title: '5',
            country: 'Russia',
            icon: Icon(Icons.child_care),
            press : (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context)=>DetailsScreen())
              );
            },
            price: 440,
          ),

          RecomendPlantCard(
            image: 'assets/images/hufs_logo.jpg',
            title: '6',
            country: 'Russia',
            icon: Icon(Icons.search),
            press : (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context)=>DetailsScreen())
              );
            },
            price: 440,
          ),
          RecomendPlantCard(
            image: 'assets/images/hufs_logo.jpg',
            title: '7',
            country: 'Russia',
            icon: Icon(Icons.save),
            press : (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context)=>DetailsScreen())
              );
            },
            price: 440,
          ),
        ],
      ),
    );
  }
}

class RecomendPlantCard extends StatelessWidget {
  const RecomendPlantCard({
    Key key, this.image, this.title, this.country, this.price, this.press, this.icon,
  }) : super(key: key);
  final String image, title, country;
  final int price;
  final Function press;
  final Icon icon ;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5),
      width: size.width * 0.4,
      child: Column(
        children: [
          icon,
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23))
                  ]),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: '$title\n'.toUpperCase(),
                        style: Theme.of(context).textTheme.button,
                      ),
                      TextSpan(
                        text: '$country'.toUpperCase(),
                        style: TextStyle(
                          color: kPrimaryColor.withOpacity(0.5),
                        ),
                      ),
                    ]),
                  ),
                  Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}