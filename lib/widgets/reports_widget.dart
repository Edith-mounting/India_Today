import 'package:flutter/material.dart';

class ReportsWidget extends StatelessWidget {
  const ReportsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return reports();
  }

  Widget horoscopeImage({required String imageUrl}) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 100,
        width: 200,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            )),
      ),
    );
  }

  Widget reports() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Reports",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
                  ),
                  label: Text("See All"))
            ],
          ),
          Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi u"),
          Container(
            height: 120,
            child: ListView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                horoscopeImage(
                    imageUrl:
                        "https://www.chicagotribune.com/resizer/_uGcupXpQEdQ5k0vfurqRikpi-8=/415x276/top/cloudfront-us-east-1.images.arcpublishing.com/tronc/2XWTZZQLK5A6XLZ3X2KE34J2K4.jpg"),
                horoscopeImage(
                    imageUrl:
                        "https://images.indianexpress.com/2021/10/HOS.jpg"),
                horoscopeImage(
                    imageUrl:
                        "https://cdn.kalingatv.com/wp-content/uploads/2021/02/Zodiac-669x430.jpg"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
