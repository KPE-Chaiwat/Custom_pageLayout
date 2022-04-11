import 'dart:html';

import 'package:flutter/material.dart';
import 'package:tpk_login_v2/TongCoding/pages/fectors_page1/Button_custom.dart';
import 'package:tpk_login_v2/TongCoding/pages/fectors_page1/Items_Show/CenterREv.dart';
import 'package:tpk_login_v2/TongCoding/pages/fectors_page1/Items_Show/Heating_Temp.dart';
import 'package:tpk_login_v2/TongCoding/pages/fectors_page1/Items_Show/Heating_time.dart';
import 'package:tpk_login_v2/TongCoding/pages/fectors_page1/Items_Show/Output_voltage_power.dart';
import 'package:tpk_login_v2/TongCoding/pages/fectors_page1/Items_Show/Pos.dart';
import 'package:tpk_login_v2/TongCoding/pages/fectors_page1/ShowItems.dart';
import 'package:tpk_login_v2/TongCoding/pages/fectors_page1/Toppic.dart';

class Page1_IpadScreen extends StatelessWidget {
  const Page1_IpadScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      height: 1180.0,
      width: 820.0,
      // color: Colors.pink,
      child: Column(
        children: [
          Toppic(),
          SizedBox(
            height: 3,
          ),
          Row(
            children: const [
              Expanded(flex: 1, child: Lefe_Items()),
              SizedBox(
                width: 3,
              ),
              Expanded(flex: 1, child: Right_Items()),
            ],
          )
        ],
      ),
    ));
  }
}

class Lefe_Items extends StatelessWidget {
  const Lefe_Items({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          ShowItems(
            left_msg: "Item",
            center_msg: "set",
            right_msg: "Meses",
            font_Weight: FontWeight.bold,
          ),
          const Show_voltage_power(
            left_msg: '1st Output Voltage (v)',
            left_msg_subtitle: "Min/Max",
            center_msg: "290",
            right_msg: ['287', '287', '289'],
          ),
          const Show_voltage_power(
            left_msg: '1st Output Power (kw)',
            left_msg_subtitle: "Min/Max",
            right_msg: ['9.6', '9.4', '9.6'],
          ),
          const Show_voltage_power(
            left_msg: '2nd  Output Voltage (v)',
            left_msg_subtitle: "Min/Max",
            center_msg: "185",
            right_msg: ['183', '183', '184'],
          ),
          const Show_voltage_power(
            left_msg: '2nd Output Power (kw)',
            left_msg_subtitle: "Min/Max",
            right_msg: ['3.6', '3.5', '3.6'],
          ),
          const Show_voltage_power(
            left_msg: '3rd Output Voltage (v)',
            left_msg_subtitle: "Min/Max",
            center_msg: "290",
            right_msg: ['287', '287', '289'],
          ),
          const Show_voltage_power(
            left_msg: '3rd Output Power (kw)',
            left_msg_subtitle: "Min/Max",
            right_msg: ['2.5', '2.3', '2.5'],
          ),
          const Show_voltage_power(
            left_msg: '4th Output Voltage (v)',
            left_msg_subtitle: "Min/Max",
            center_msg: "0",
            right_msg: ['0', '0', '0'],
          ),
          const Show_voltage_power(
            left_msg: '4th Output Power (kw)',
            left_msg_subtitle: "Min/Max",
            right_msg: ['0', '0', '0'],
          ),
          //----------------------------------------------------------------
          ShowItems(
            left_msg: "",
            center_msg: "MEAS.",
            right_msg: "min/max",
            font_Weight: FontWeight.normal,
            height: 50,
          ),
          Heating_temp(
            left_msg: " 1st HEATING TEMP.(c)",
            center_msg: "374.",
            right_msg: "64/374",
            font_Weight: FontWeight.normal,
            font_Size: 14,
          ),
          Heating_temp(
            left_msg: "2nd HEATING TEMP.(c)",
            center_msg: "592.",
            right_msg: "441/592",
            font_Weight: FontWeight.normal,
            font_Size: 14,
          ),
          Heating_temp(
            left_msg: "3rd HEATING TEMP.(c)",
            center_msg: "683.",
            right_msg: "64/683",
            font_Weight: FontWeight.normal,
            font_Size: 14,
          ),
          Heating_temp(
            left_msg: "4th HEATING TEMP.(c)",
            center_msg: "0.",
            right_msg: "0/0",
            font_Weight: FontWeight.normal,
            font_Size: 14,
          ),
        ],
      ),
    );
  }
}

class Right_Items extends StatelessWidget {
  const Right_Items({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          ShowItems(
            left_msg: "Item",
            center_msg: "set",
            right_msg: "Meses",
            font_Weight: FontWeight.bold,
          ),
          Heating_time(
            left_msg: "1st HEATING TIME (sec)",
            center_msg: "9.00",
            right_msg: "9.00",
            font_Size: 14,
          ),
          Heating_time(
            left_msg: "2nd HEATING WAIT TIME (sec)",
            center_msg: "0.00",
            right_msg: "0.00",
            font_Size: 14,
          ),
          Heating_time(
            left_msg: "2nd HEATING TIME (sec)",
            center_msg: "7.80",
            right_msg: "7.80",
            font_Size: 14,
          ),
          Heating_time(
            left_msg: "3rd HEATING WAIT TIME (sec)",
            center_msg: "0.00",
            right_msg: "0.00",
            font_Size: 14,
          ),
          Heating_time(
            left_msg: "3rd HEATING TIME (sec)",
            center_msg: "13.00",
            right_msg: "13.00",
            font_Size: 14,
          ),
          Heating_time(
            left_msg: "4th HEATING WAIT TIME (sec)",
            center_msg: "0.00",
            right_msg: "0.00",
            font_Size: 14,
          ),
          Heating_time(
            left_msg: "4th HEATING TIME (sec)",
            center_msg: "0.00",
            right_msg: "0.00",
            font_Size: 14,
          ),
          Heating_time(
            left_msg: "AIR COOLING (sec)",
            center_msg: "0.00",
            right_msg: "0.00",
            font_Size: 14,
          ),
          ShowItems(),
          ShowItems(),
          POS(
            left_msg: "CENTERING POS. (mm)",
            center_msg: "119.00",
            right_msg: "119.00",
            font_Size: 14,
          ),
          POS(
            left_msg: "HEATING POS. (mm)",
            center_msg: "218.90",
            right_msg: "218.90",
            font_Size: 14,
          ),
          POS(
            left_msg: "HOME POS. (mm)",
            center_msg: "100.00",
            right_msg: "99.99",
            font_Size: 14,
          ),
          ShowItems(),
          ShowItems(),
          Center_REV(
            left_msg: "HEAD CENTER RREV.(rmp)",
            center_msg: "",
            right_msg: "105",
            font_Size: 14,
          ),
          Center_REV(
            left_msg: "TAIL CENTER RREV.(rmp)",
            center_msg: "103",
            right_msg: "",
            font_Size: 14,
          ),
          Center_REV(
            left_msg: "CYCLE TIME (sec)",
            center_msg: "",
            right_msg: "46.6",
            font_Size: 14,
          ),
          CustomButton()
        ],
      ),
    );
  }
}
