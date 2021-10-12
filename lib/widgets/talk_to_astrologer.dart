import 'package:flutter/material.dart';
import 'package:indiatoday/widgets/astro_card.dart';

class TalkToAstrologerWidget extends StatelessWidget {
  const TalkToAstrologerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return talktoastrologer();
  }

  Widget talktoastrologer() {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Talk to an Astrologer",
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
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Text(
                "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden."),
          ),
          Container(
            height: 260,
            child: ListView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              children: [
                AstroProfileCard(),
                AstroProfileCard(),
                AstroProfileCard(),
              ],
            ),
          )
        ],
      ),
    ); //Container
  }
}
