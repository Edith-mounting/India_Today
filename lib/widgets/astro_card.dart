import 'package:flutter/material.dart';

class AstroProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return astrologerProfile(context);
  }

  Widget astrologerProfile(BuildContext context) {
    return Container(
      height: 260,
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              // height: 100,
              width: 190,
              child: Image.network(
                  'https://www.biography.com/.image/t_share/MTE1ODA0OTcxOTg4MDU5NjYx/raavan---uk-film-premiere-red-carpet-arrivals.jpg'),
              height: 120,
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Arvind Shukla",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text("4.3")
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Cofee cup Reading",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("500/min"),
                    SizedBox(
                      width: 10,
                    ),
                    MaterialButton(
                        onPressed: () {},
                        color: Theme.of(context).primaryColor,
                        // icon: Icon(Icons.radio_button_checked),
                        child: Text(
                          "Talk Now",
                          style: TextStyle(color: Colors.white),
                        )),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
