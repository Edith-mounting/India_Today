import 'package:flutter/material.dart';
import 'package:indiatoday/widgets/ads_widget.dart';
import 'package:indiatoday/widgets/ask_a_question_widget.dart';
import 'package:indiatoday/widgets/copy_right_widget.dart';
import 'package:indiatoday/widgets/daily_horoscope_widget.dart';
import 'package:indiatoday/widgets/final_remarks.dart';
import 'package:indiatoday/widgets/quote_widget.dart';
import 'package:indiatoday/widgets/reports_widget.dart';
import 'package:indiatoday/widgets/talk_to_astrologer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          QuoteWidget(),
          AdsWidget(),
          DailyHoroscopeWidget(),
          TalkToAstrologerWidget(),
          ReportsWidget(),
          AskAQuestionWidget(),
          FinalRemarks(),
          CopyRightWidget(),
        ],
      ),
    );
  }
}
