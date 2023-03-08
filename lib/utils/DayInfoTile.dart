import 'package:flutter/material.dart';

class DayTile extends StatelessWidget {
  final String days;

  const DayTile({Key? key, required this.days}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 2,
            child: Align(
                alignment: Alignment.center,
                child: Text(
                  days,
                  style: const TextStyle(fontSize: 16),
                ))),
        Expanded(
            flex: 1,
            child: Icon(
              Icons.sunny,
              color: Colors.yellow.shade800,
              size: 30,
            )),
        const Expanded(
            flex: 1,
            child: Text(
              "Windy",
              style: TextStyle(fontSize: 16),
            )),
        const Expanded(
          flex: 2,
          child: Align(
              alignment: Alignment.center,
              child: Text(
                "17/15",
                style: TextStyle(fontSize: 16),
              )),
        )
      ],
    );
  }
}
