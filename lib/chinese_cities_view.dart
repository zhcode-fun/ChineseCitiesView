library chinese_cities_view;

import 'package:chinese_cities_view/bean/city.dart';
import 'package:chinese_cities_view/view/choose_city.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CitiesView {
  BuildContext _context;
  static CitiesView _instance;

  factory CitiesView(BuildContext context) => _getInstance(context);

  static CitiesView _getInstance(BuildContext context) {
    _instance ??= CitiesView._internal(context);
    return _instance;
  }

  CitiesView._internal(BuildContext context) {
    _context = context;
    // 以1080*2340设计尺寸为准
    ScreenUtil.init(
      context,
      designSize: Size(1080, 2340),
      allowFontScaling: false,
    );
  }

  /// 打开选择城市页面
  Future<City> chooseCity({
    AppBar appBar,
    Color themeColor,
  }) {
    return Navigator.push(
      _context,
      MaterialPageRoute(
        builder: (context) => ChooseCity(
          appBar: appBar,
          themeColor: themeColor,
        ),
      ),
    );
  }
}
