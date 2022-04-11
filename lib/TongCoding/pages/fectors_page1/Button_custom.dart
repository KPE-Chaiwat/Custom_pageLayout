import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      //color: Colors.amber,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.all(3),
                child: const Text("Metor",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                decoration: BoxDecoration(
                  //color: Colors.blue,
                  border: Border.all(width: 1.5),
                  borderRadius: const BorderRadius.all(Radius.circular(4)),
                ),
              )),
          const SizedBox(
            width: 25.0,
          ),
          InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.all(3),
                child: const Text("Menu",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                decoration: BoxDecoration(
                  border: Border.all(width: 1.5),
                  borderRadius: const BorderRadius.all(Radius.circular(4)),
                ),
              )),
          const SizedBox(
            width: 5.0,
          ),
        ],
      ),
    );
  }
}
