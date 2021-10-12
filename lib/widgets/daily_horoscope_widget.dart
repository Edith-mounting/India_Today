import 'package:flutter/material.dart';

class DailyHoroscopeWidget extends StatelessWidget {
  const DailyHoroscopeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return dailyHoroscope();
  }

  Widget dailyHoroscope() {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Daily Horoscope",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
                  ),
                  label: Text(
                    "See All",
                  ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. "),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              particularSign(icondata: Icons.home, text: "Gemini"),
              particularSign(icondata: Icons.home, text: "Gemini"),
              particularSign(icondata: Icons.home, text: "Gemini"),
            ],
          )
        ],
      ),
    );
  }

    Widget particularSign({required IconData icondata, required String text}) {
    return Container(
      padding: EdgeInsets.all(1),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.blue.withOpacity(0.1),
            radius: 35,
            child: Icon(
              icondata,
              size: 30,
              color: Colors.blueAccent.shade400,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            "March 21 - April 19",
            style: TextStyle(color: Colors.grey),
          )
        ],
      ),
    );
  }
}
