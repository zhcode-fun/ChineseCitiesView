library chinese_cities_view;

import 'package:Chinese_cities_view/bean/city.dart';
import 'package:Chinese_cities_view/view/choose_city.dart';
import 'package:flutter/material.dart';

class CitiesView {
  /// 打开选择城市页面
  static Future<City> chooseCity() {
    MaterialPageRoute(builder: (context) => ChooseCity());
  }
}
