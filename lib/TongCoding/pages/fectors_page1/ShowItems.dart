// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class ShowItems extends StatelessWidget {
  ShowItems(
      {Key? key,
      this.color,
      this.center_msg,
      this.left_msg,
      this.right_msg,
      this.font_Weight,
      this.height})
      : super(key: key);
  final Color? color;
  final String? left_msg;
  final String? center_msg;
  final String? right_msg;
  final FontWeight? font_Weight;
  final double? height;
  @override
  Widget build(BuildContext context) {
    //----------------------------------------------------------------
    Container _container(
        String index,
        Color color,
        double borderTopLeft,
        double borderTopRight,
        double borderBottomLeft,
        double borderBottomRight) {
      return Container(
        decoration: BoxDecoration(
            color: color,
            border: Border.all(width: 1.5),
            // borderRadius: const BorderRadius.all(Radius.circular(7.5)
            // ),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(borderTopLeft),
                topRight: Radius.circular(borderTopRight),
                bottomLeft: Radius.circular(borderBottomLeft),
                bottomRight: Radius.circular(borderBottomRight))),
        child: Center(
            child: Text(
          index,
          style: TextStyle(
              fontSize: 16.0,
              fontWeight: font_Weight,
              fontStyle: FontStyle.normal),
        )),
      );
    }

    TextStyle _textStyle = const TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal);

    return SizedBox(
      height: height ?? 30,
      child: Row(
        children: [
          Expanded(
              flex: 3,
              child: _container(
                left_msg ?? "",
                color ?? Colors.white,
                0,
                0,
                0,
                0,
              )),
          Expanded(
              flex: 1,
              child: _container(
                center_msg ?? "",
                color ?? Colors.white,
                0,
                0,
                0,
                0,
              )),
          Expanded(
              flex: 1,
              child: _container(
                right_msg ?? "",
                color ?? Colors.white,
                0,
                0,
                0,
                0,
              )),
        ],
      ),
    );
  }
}
