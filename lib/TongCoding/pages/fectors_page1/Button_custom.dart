import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  CustomButton(
      {Key? key, required this.onPressed_Menu, required this.onPressed_Motor})
      : super(key: key);
  final Function() onPressed_Menu;
  final Function() onPressed_Motor;
  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      //color: Colors.amber,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.all(3),
            child: TextButton(
              onPressed: widget.onPressed_Motor,
              child: const Text("Motor",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            decoration: BoxDecoration(
              //color: Colors.blue,
              border: Border.all(width: 1.5),
              borderRadius: const BorderRadius.all(Radius.circular(4)),
            ),
          ),
          const SizedBox(
            width: 25.0,
          ),
          Container(
            padding: const EdgeInsets.all(3),
            child: TextButton(
              onPressed: widget.onPressed_Menu,
              child: const Text("Menu",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            decoration: BoxDecoration(
              border: Border.all(width: 1.5),
              borderRadius: const BorderRadius.all(Radius.circular(4)),
            ),
          ),
          const SizedBox(
            width: 5.0,
          ),
        ],
      ),
    );
  }
}
