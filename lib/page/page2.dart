import 'package:flutter/material.dart';
import 'package:tpk_login_v2/TongCoding/components/Easydropdown_TongCustom.dart';

import '../data/global.dart';
import 'page0.dart';
import '../data/global.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page2Body();
    ;
  }
}

class Page2Body extends StatefulWidget {
  Page2Body({Key? key}) : super(key: key);

  @override
  State<Page2Body> createState() => _Page2BodyState();
}

class _Page2BodyState extends State<Page2Body> {
  static const Map<String, String> _tongTestDataDP = {
    " 0": "Default",
    "1": "One",
    " 2": "Two",
    " 3": "Three",
  };
  String _value = _tongTestDataDP.entries.first.value;
  String itemInDP_result = '';
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 100,
          width: 100,
          color: Colors.blue,
          child: Center(
            child: EasyDropDown_TongCustom(
              listdropdown: _tongTestDataDP,
              onChangeinside: (e) {
                // setState(() {
                //   itemInDP = e;

                // });
                itemInDP_result = e;
              },
              value: _value,
              width: 100,
              height: 100,
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        IconButton(
            onPressed: () {
              setState(() {
                itemInDP_result;
                print(itemInDP_result + 'rr');
              });
            },
            icon: Icon(Icons.contactless_sharp)),
        Text(itemInDP_result)
      ],
    );
  }
}
