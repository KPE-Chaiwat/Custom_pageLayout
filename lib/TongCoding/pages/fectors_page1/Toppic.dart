import 'package:flutter/material.dart';

class Toppic extends StatelessWidget {
  const Toppic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle _textStyle = const TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal);

    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: Container(
        height: 45.0,
        decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(width: 1.5),
          borderRadius: const BorderRadius.all(Radius.circular(7.5)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "MONITOR",
              style: _textStyle,
            ),
            Text(
              "MODEL:PINIONR7.5",
              style: _textStyle,
            ),
            Text(
              "Model NO:1",
              style: _textStyle,
            ),
          ],
        ),
      ),
    );
  }
}
