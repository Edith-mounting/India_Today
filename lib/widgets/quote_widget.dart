import 'package:flutter/material.dart';

class QuoteWidget extends StatelessWidget {
  const QuoteWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return returnQuote();
  }

  Widget returnQuote() {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            height: 170,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ' " ',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                        "You have to grow from the inside out. None can teach you, none can make you spiritual. There is no other teacher but your own soul."),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      ' " ',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "- Swami Vivekanand",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Container(
          margin: EdgeInsets.all(10.0),
          height: 60,
          width: 60,
          decoration: BoxDecoration(color: Colors.red, shape: BoxShape.circle),
          child: CircleAvatar(
            minRadius: 24,
            // radius: 24,
            backgroundColor: Colors.orange,
            backgroundImage: AssetImage('assets/images/avatar.jpg'),
          ),
        )
      ],
    ));
  }
}
