import 'package:bloc/bloc.dart';

import 'package:tpk_login_v2/TongCoding/Data/DataTest_Page1.dart';

class DatatestCubit extends Cubit<Map<String, String>> {
  DatatestCubit() : super(datatest01);
  // static final datatest01 = 'datatest01';
  // static final datatest02 = 'datatest02';
  static final datatest01 = DataTest_Tong().dataInTable01;
  static final datatest02 = DataTest_Tong().dataInTable02;

  void toggleData() {
    print("$state");
    if (state == datatest01) {
      emit(datatest02);
    } else {
      emit(datatest01);
    }
  }

  void select_datatest01() {
    emit(datatest01);
  }

  void select_datatest02() {
    emit(datatest02);
  }
}
