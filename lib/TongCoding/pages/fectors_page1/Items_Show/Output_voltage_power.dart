// ignore_for_file: non_constant_identifier_names, camel_case_types

import 'dart:html';

import 'package:flutter/material.dart';

class Show_voltage_power extends StatelessWidget {
  const Show_voltage_power(
      {Key? key,
      this.center_msg,
      this.left_msg,
      required this.right_msg,
      this.color,
      this.left_msg_subtitle})
      : super(key: key);
  final Color? color;
  final String? left_msg;
  final String? left_msg_subtitle;
  final String? center_msg;
  final List<String> right_msg;
  @override
  Widget build(BuildContext context) {
    double _height = 50.0;
    Color _color = color ?? Colors.white;

    BoxDecoration _customdecoration(Color colors) => BoxDecoration(
          color: colors,
          border: Border.all(width: 1.5),
          //borderRadius: const BorderRadius.all(Radius.circular(7.5)),
        );
    return Container(
      height: _height,
      // color: Colors.pink,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              height: _height,
              decoration: _customdecoration(_color),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      left_msg ?? '',
                    ),
                    Text(left_msg_subtitle ?? '')
                  ]),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.topCenter,
              height: _height,
              decoration: _customdecoration(_color),
              child: Text(
                center_msg ?? '',
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
                height: _height,
                decoration: _customdecoration(_color),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(right_msg[0]),
                    Text('${right_msg[1]}/${right_msg[1]}')
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
