import 'package:flutter/material.dart';

class AdsWidget extends StatelessWidget {
  const AdsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ads();
  }

  Widget ads() {
    return Container(
      height: 130,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        children: [
          customAdCard(),
          customAdCard(),
          customAdCard(),
        ],
      ),
    );
  }

  Widget customAdCard() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 100,
      width: 200,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.network(
          'https://images.appypie.com/wp-content/uploads/2019/03/14172103/Top-Best-Paying-Mobile-Ad-Networks-1.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
