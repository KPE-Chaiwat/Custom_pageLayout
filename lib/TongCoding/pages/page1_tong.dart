import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tpk_login_v2/TongCoding/Data/DataTest_Page1.dart';
import 'package:tpk_login_v2/TongCoding/cubit/datatest_cubit.dart';
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
      child: Column(
        children: [
          Toppic(),
          const SizedBox(
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

class Lefe_Items extends StatefulWidget {
  const Lefe_Items({Key? key}) : super(key: key);

  @override
  State<Lefe_Items> createState() => _Lefe_ItemsState();
}

class _Lefe_ItemsState extends State<Lefe_Items> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DatatestCubit, Map<String, String>>(
      builder: (context, state) {
        var dataInTable = state;
        return SizedBox(
          child: Column(
            children: [
              ShowItems(
                left_msg: "Item",
                center_msg: "set",
                right_msg: "Meses",
                font_Weight: FontWeight.bold,
              ),
              Show_voltage_power(
                left_msg: '1st Output Voltage (v)',
                left_msg_subtitle: "Min/Max",
                center_msg: dataInTable['Data001'],
                right_msg: [
                  dataInTable["Data002"].toString(),
                  dataInTable["Data003"].toString(),
                  dataInTable["Data004"].toString()
                ],
              ),
              Show_voltage_power(
                left_msg: '1st Output Power (kw)',
                left_msg_subtitle: "Min/Max",
                center_msg: dataInTable["Data005"],
                right_msg: [
                  dataInTable["Data006"].toString(),
                  dataInTable["Data007"].toString(),
                  dataInTable["Data008"].toString()
                ],
              ),
              Show_voltage_power(
                left_msg: '2nd  Output Voltage (v)',
                left_msg_subtitle: "Min/Max",
                center_msg: dataInTable["Data009"],
                right_msg: [
                  dataInTable["Data010"].toString(),
                  dataInTable["Data011"].toString(),
                  dataInTable["Data012"].toString()
                ],
              ),
              Show_voltage_power(
                left_msg: '2nd Output Power (kw)',
                left_msg_subtitle: "Min/Max",
                center_msg: dataInTable["Data013"],
                right_msg: [
                  dataInTable["Data014"].toString(),
                  dataInTable["Data015"].toString(),
                  dataInTable["Data016"].toString(),
                ],
              ),
              Show_voltage_power(
                left_msg: '3rd Output Voltage (v)',
                left_msg_subtitle: "Min/Max",
                center_msg: dataInTable["Data017"],
                right_msg: [
                  dataInTable["Data018"].toString(),
                  dataInTable["Data019"].toString(),
                  dataInTable["Data020"].toString()
                ],
              ),
              Show_voltage_power(
                left_msg: '3rd Output Power (kw)',
                left_msg_subtitle: "Min/Max",
                center_msg: dataInTable["Data021"],
                right_msg: [
                  dataInTable["Data022"].toString(),
                  dataInTable["Data023"].toString(),
                  dataInTable["Data024"].toString()
                ],
              ),
              Show_voltage_power(
                left_msg: '4th Output Voltage (v)',
                left_msg_subtitle: "Min/Max",
                center_msg: dataInTable["Data025"],
                right_msg: [
                  dataInTable["Data026"].toString(),
                  dataInTable["Data027"].toString(),
                  dataInTable["Data028"].toString()
                ],
              ),
              Show_voltage_power(
                left_msg: '4th Output Power (kw)',
                left_msg_subtitle: "Min/Max",
                center_msg: dataInTable["Data029"],
                right_msg: [
                  dataInTable["Data030"].toString(),
                  dataInTable["Data031"].toString(),
                  dataInTable["Data032"].toString()
                ],
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
                center_msg: dataInTable["Data033"],
                right_msg:
                    "${dataInTable["Data034"]}/${dataInTable["Data035"]}",
                font_Weight: FontWeight.normal,
                font_Size: 14,
              ),
              Heating_temp(
                left_msg: "2nd HEATING TEMP.(c)",
                center_msg: dataInTable["Data036"],
                right_msg:
                    "${dataInTable["Data037"]}/${dataInTable["Data038"]}",
                font_Weight: FontWeight.normal,
                font_Size: 14,
              ),
              Heating_temp(
                left_msg: "3rd HEATING TEMP.(c)",
                center_msg: dataInTable["Data039"],
                right_msg:
                    "${dataInTable["Data040"]}/${dataInTable["Data041"]}",
                font_Weight: FontWeight.normal,
                font_Size: 14,
              ),
              Heating_temp(
                left_msg: "4th HEATING TEMP.(c)",
                center_msg: dataInTable["Data042"],
                right_msg:
                    "${dataInTable["Data043"]}/${dataInTable["Data044"]}",
                font_Weight: FontWeight.normal,
                font_Size: 14,
              ),
            ],
          ),
        );
      },
    );
  }
}

class Right_Items extends StatefulWidget {
  const Right_Items({Key? key}) : super(key: key);

  @override
  State<Right_Items> createState() => _Right_ItemsState();
}

class _Right_ItemsState extends State<Right_Items> {
  //final takeData = dataInTable;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DatatestCubit, Map<String, String>>(
      builder: (context, state) {
        var takeData = state;
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
                center_msg: takeData["Data045"],
                right_msg: takeData["Data046"],
                font_Size: 14,
              ),
              Heating_time(
                left_msg: "2nd HEATING WAIT TIME (sec)",
                center_msg: takeData["Data047"],
                right_msg: takeData["Data048"],
                font_Size: 14,
              ),
              Heating_time(
                left_msg: "2nd HEATING TIME (sec)",
                center_msg: takeData["Data049"],
                right_msg: takeData["Data050"],
                font_Size: 14,
              ),
              Heating_time(
                left_msg: "3rd HEATING WAIT TIME (sec)",
                center_msg: takeData["Data051"],
                right_msg: takeData["Data052"],
                font_Size: 14,
              ),
              Heating_time(
                left_msg: "3rd HEATING TIME (sec)",
                center_msg: takeData["Data053"],
                right_msg: takeData["Data054"],
                font_Size: 14,
              ),
              Heating_time(
                left_msg: "4th HEATING WAIT TIME (sec)",
                center_msg: takeData["Data055"],
                right_msg: takeData["Data056"],
                font_Size: 14,
              ),
              Heating_time(
                left_msg: "4th HEATING TIME (sec)",
                center_msg: takeData["Data057"],
                right_msg: takeData["Data058"],
                font_Size: 14,
              ),
              Heating_time(
                left_msg: "AIR COOLING (sec)",
                center_msg: takeData["Data059"],
                right_msg: takeData["Data060"],
                font_Size: 14,
              ),
              ShowItems(),
              ShowItems(),
              POS(
                left_msg: "CENTERING POS. (mm)",
                center_msg: takeData["Data061"],
                right_msg: takeData["Data062"],
                font_Size: 14,
              ),
              POS(
                left_msg: "HEATING POS. (mm)",
                center_msg: takeData["Data063"],
                right_msg: takeData["Data064"],
                font_Size: 14,
              ),
              POS(
                left_msg: "HOME POS. (mm)",
                center_msg: takeData["Data065"],
                right_msg: takeData["Data066"],
                font_Size: 14,
              ),
              ShowItems(),
              ShowItems(),
              Center_REV(
                left_msg: "HEAD CENTER RREV.(rmp)",
                center_msg: takeData["Data067"],
                right_msg: takeData["Data068"],
                font_Size: 14,
              ),
              Center_REV(
                left_msg: "TAIL CENTER RREV.(rmp)",
                center_msg: takeData["Data069"],
                right_msg: takeData["Data070"],
                font_Size: 14,
              ),
              Center_REV(
                left_msg: "CYCLE TIME (sec)",
                center_msg: takeData["Data071"],
                right_msg: takeData["Data072"],
                font_Size: 14,
              ),
              SizedBox(
                height: 3,
              ),
              CustomButton(
                onPressed_Motor: () {
                  context.read<DatatestCubit>().select_datatest02();
                },
                onPressed_Menu: () {
                  context.read<DatatestCubit>().select_datatest01();
                },
              )
            ],
          ),
        );
      },
    );
  }
}
