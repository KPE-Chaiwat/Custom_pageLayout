import 'package:flutter/material.dart';

class EasyDropDown_TongCustom extends StatefulWidget {
  EasyDropDown_TongCustom({
    Key? key,
    required this.listdropdown,
    required this.onChangeinside,
    required this.value,
    required this.width,
    required this.height,
  }) : super(key: key);
  // List<String> listdropdown;
  Map<String, String> listdropdown;
  Function onChangeinside;
  String value;
  double width;
  double height;

  @override
  State<EasyDropDown_TongCustom> createState() =>
      _EasyDropDown_TongCustomState();
}

class _EasyDropDown_TongCustomState extends State<EasyDropDown_TongCustom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent)),
      child: DropdownButton<String>(
        isExpanded: true,
        // borderRadius: BorderRadius.all(Radius.circular(10)),
        value: widget.value,
        iconDisabledColor: Colors.transparent,
        iconEnabledColor: Colors.transparent,
        // icon: const Icon(Icons.arrow_downward),
        // iconSize: 24,
        // elevation: 16,
        style: const TextStyle(color: Colors.black),
        underline: Container(
          height: 2,
          color: Colors.transparent,
        ),
        onChanged: (String? newValue) {
          setState(() {
            widget.onChangeinside(newValue!);
            widget.value = newValue;
          });
        },
        // items:
        //     widget.listdropdown.map<DropdownMenuItem<String>>((String value) {
        //   return DropdownMenuItem<String>(
        //     value: value,
        //     child: Text(value),
        //   );
        // }).toList(),
        items: [
          for (MapEntry<String, String> e in widget.listdropdown.entries)
            DropdownMenuItem(
              value: e.value,
              child: Text(e.key.toString()),
            )
        ],
      ),
    );
  }
}


          // Container(
          //   // color: Colors.red,
          //   height: 24,
          //   width: 24,
          //   child: Padding(
          //     padding: EdgeInsetsDirectional.all(1),
          //     child: const Icon(Icons.arrow_downward),
          //   ),
          // ),