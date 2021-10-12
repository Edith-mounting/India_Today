import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16, bottom: 8),
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            color: Colors.black.withOpacity(0.075),
            offset: Offset(0, 1),
            blurRadius: 10)
      ]),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: Image.asset(
            'assets/images/search.png',
            scale: 4,
          ),
          hintText: 'Search Astrologer',
          hintStyle: TextStyle(color: Colors.black26, fontSize: 14),
        ),
      ),
    );
  }
}