import 'package:flutter/material.dart';

class CopyRightWidget extends StatelessWidget {
  const CopyRightWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Center(child: Text("© Copyright 2020 All Rights Reserved")),
    );
  }
}
