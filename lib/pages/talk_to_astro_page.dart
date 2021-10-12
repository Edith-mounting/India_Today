import 'package:flutter/material.dart';
import 'package:indiatoday/pages/astro_profile_page.dart';
import 'package:indiatoday/widgets/search_box_widget.dart';

class TalktoAstroPage extends StatefulWidget {
  @override
  _TalktoAstro createState() => _TalktoAstro();
}

class _TalktoAstro extends State<TalktoAstroPage> {
  final sortMethods = [
    'Experience-high to low',
    'Experience-low to high',
    'Price-high to low',
    'Price-low to high'
  ];

  bool isChecked = false;

  final _divider = Divider(
    color: Colors.grey.shade100,
    thickness: 2,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          iconBar(),
          SearchBox(),
          Expanded(
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: [
                Astroprofile(),
                _divider,
                Astroprofile(),
                _divider,
                Astroprofile(),
                _divider,
                Astroprofile(),
                _divider,
                Astroprofile(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  iconBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Talk to an Astrologer',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/images/search.png',
                  height: 24,
                  width: 24,
                )),
            IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/images/filter.png',
                  height: 24,
                  width: 24,
                )),
            Container(
              child: PopupMenuButton(
                  child: Image.asset(
                    'assets/images/sort.png',
                    height: 24,
                    width: 24,
                  ),
                  itemBuilder: (context) => [
                        PopupMenuItem(child: StatefulBuilder(builder:
                            (BuildContext context, StateSetter setMyState) {
                          return Container(
                            width: 400,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Sort By',
                                  style: TextStyle(
                                    color: Colors.deepOrange,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 16, bottom: 16),
                                  height: 1,
                                  color: Colors.grey.shade100,
                                ),
                                sortingRadioButton(setMyState)
                              ],
                            ),
                          );
                        })),
                      ]),
            ),
          ],
        )
      ],
    );
  }

  int _value = 0;



  sortingRadioButton(StateSetter setMyState) {
    return Column(
      children: [
        Row(
          children: [
            Radio<int>(
                value: 0,
                groupValue: _value,
                onChanged: (val) {
                  setMyState(() {
                    _value = val!;
                  });
                }),
            SizedBox(
              width: 10,
            ),
            Text("Experience-high to low"),
          ],
        ),
        Row(
          children: [
            Radio<int>(
                value: 1,
                groupValue: _value,
              onChanged: (val) {
                  setMyState(() {
                    _value = val!;
                  });
                }),
            SizedBox(
              width: 10,
            ),
            Text("Experience-low to high"),
          ],
        ),
        Row(
          children: [
            Radio<int>(
                value: 2,
                groupValue: _value,
                  onChanged: (val) {
                  setMyState(() {
                    _value = val!;
                  });
                }),
            SizedBox(
              width: 10,
            ),
            Text("Price-high to low"),
          ],
        ),
        Row(
          children: [
            Radio<int>(
                value: 3,
                groupValue: _value,
                  onChanged: (val) {
                  setMyState(() {
                    _value = val!;
                  });
                }),
            SizedBox(
              width: 10,
            ),
            Text("Price-low to high"),
          ],
        ),
      ],
    );
  }
}

enum BestTutorSite { javatpoint, w3schools, tutorialandexample }
