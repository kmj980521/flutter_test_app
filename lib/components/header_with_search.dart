import 'package:flutter/material.dart';
import 'package:flutter_app/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      height: size.height * 0.2,
      width: size.width,
      child: Stack(
        children: [

          Container(
            padding: EdgeInsets.only(
                left:kDefaultPadding,
                right:kDefaultPadding,

            ),
            height: size.height * 0.3,
            decoration: BoxDecoration(
                color:kPrimaryColor,
               image:DecorationImage(
                    image: AssetImage('assets/images/global_shadow.png'),
                  fit:BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36)
                )
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:13),
                    child: Container(

                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image:DecorationImage(
                            image: AssetImage('assets/images/hufs_logo.jpg')
                        ),
                      ),
                    ),
                  ),
                  Text('Hi Global Campus!',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                    color:Colors.black,

                    fontWeight: FontWeight.bold,
                    fontSize: 30,
              )
                  //Theme.of(context).textTheme.headline5.copyWith(

                  ,),
                  Spacer(),


                  //Image.asset('assets/images/logo.png'),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
