import 'package:flutter/material.dart';

class Astroprofile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      margin: EdgeInsets.only(top: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  child: Image.network(
                    'https://www.espncricinfo.com/db/PICTURES/CMS/309400/309456.13.jpg',
                    height: 120,
                    width: 120,
                  ),
                ),
              ),
              SizedBox(
                width: 9,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Virat Kohli',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    CustomRow(
                      icon: Icon(
                        Icons.person_add_outlined,
                        color: Colors.orange,
                        size: 15,
                      ),
                      txt:
                          'Coffe Cup Reading,Falit Jyotish,Kundali Grah Dost,Vastu,Astrology,Vedic Astrology',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomRow(
                      icon: Icon(
                        Icons.sort_by_alpha,
                        color: Colors.orange,
                        size: 15,
                      ),
                      txt: 'English,Hindi',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomRow(
                      icon: Icon(
                        Icons.person_add_outlined,
                        color: Colors.orange,
                        size: 15,
                      ),
                      txt: 'Rs.100/min',
                    ),
                    SizedBox(height: 10),
                    GestureDetector(
                      child: Container(
                        padding: EdgeInsets.only(
                            left: 16, top: 8, bottom: 8, right: 32),
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 3.0,
                              ),
                            ],
                            color: Colors.orange[500],
                            borderRadius: BorderRadius.circular(6)),
                        child: Row(
                          children: [
                            Icon(
                              Icons.call_outlined,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Talk on Call',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Container(
            child: Text('25 Years'),
          )
        ],
      ),
    );
  }
}

class CustomRow extends StatelessWidget {
  CustomRow({required this.icon, required this.txt});
  final Icon icon;
  final String txt;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        icon,
        SizedBox(
          width: 10,
        ),
        SizedBox(
          width: 110,
          child: Text(txt),
        ),
      ],
    );
  }
}
