import 'package:flutter/material.dart';

class FinalRemarks extends StatelessWidget {
  const FinalRemarks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return finalRemarks(context);
  }

  Widget finalRemarks(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hear from our Happy Customers!",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 308,
            child: ListView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                customerFeedback(context),
                customerFeedback(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget customerFeedback(BuildContext context) {
    return Container(
      width: 300,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  ' " ',
                  style: TextStyle(color: Colors.blue, fontSize: 35),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure ",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Stack(
              children: [
                Column(
                  children: [
                    Container(
                      height: 30,
                      color: Colors.white,
                    ),
                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10))),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.orange,
                          radius: 30,
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    Text("Gagan Deep Singh"),
                    Text("Bhopal, India"),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
