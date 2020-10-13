import 'package:chinese_cities_view/bean/city.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CityBox extends StatelessWidget {
  final City city;

  const CityBox({Key key, @required this.city}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xffe5e5e5),
        ),
        borderRadius: BorderRadius.circular(6.w),
      ),
      child: Text(
        city.fullname,
        style: TextStyle(
          fontSize: 42.sp,
          color: const Color(0xff333333),
        ),
      ),
    );
  }
}
