import 'package:flutter/material.dart';

class AskAQuestionWidget extends StatefulWidget {
  const AskAQuestionWidget({Key? key}) : super(key: key);

  @override
  _AskAQuestionWidgetState createState() => _AskAQuestionWidgetState();
}

class _AskAQuestionWidgetState extends State<AskAQuestionWidget> {
  @override
  Widget build(BuildContext context) {
    return askAquestion();
  }

  Widget askAquestion() {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Ask a Question",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. "),
          ),
          SizedBox(
            height: 10,
          ),
          chooseCategory(),
        ],
      ),
    );
  }

  var _currentSelectedValue;

  var _currencies = ["Love", "Career", "Marriage", "Salary"];

  dropDown() {
    final textStyle = TextStyle();

    return FormField<String>(
      builder: (FormFieldState<String> state) {
        return Container(
          color: Colors.white,
          child: InputDecorator(
            decoration: InputDecoration(
                enabled: false,
                isCollapsed: false,
                labelStyle: textStyle,
                labelText: 'Select a Category : Love, Career, more',
                errorStyle: TextStyle(color: Colors.redAccent, fontSize: 16.0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0))),
            isEmpty: _currentSelectedValue == null,
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: _currentSelectedValue,
                isDense: true,
                onChanged: (String? newValue) {
                  setState(() {
                    _currentSelectedValue = newValue!;
                    state.didChange(newValue);
                  });
                },
                items: _currencies.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget chooseCategory() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.grey.shade200,
      ),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      height: 160,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Choose Category'.toUpperCase(),
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          dropDown(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Rs. 99 (Including GST)',
                style: TextStyle(fontSize: 10),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Ideas what to ask",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0)),
                    elevation: 0,
                    minWidth: 60,
                    color: Colors.orangeAccent,
                    onPressed: () {},
                    child: Text(
                      "Ask a Question",
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
