import 'package:chinese_cities_view/view/my_widgets/city_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChooseCity extends StatelessWidget {
  /// 可选，标题栏
  final AppBar appBar;

  /// 主题颜色
  final Color themeColor;

  const ChooseCity({
    Key key,
    this.appBar,
    this.themeColor = const Color(0xff4897ff),
  }) : super(key: key);

  @override
  Widget build(BuildContext pageCtx) {
    final _scrollController = ScrollController();
    return Scaffold(
      appBar: appBar ??
          AppBar(
            title: Text('选择城市'),
            centerTitle: true,
          ),
      backgroundColor: const Color(0xfff6f6f6),
      body: Container(
        child: Column(
          children: [
            SearchBar(themeColor: themeColor),
            SizedBox(height: 24.w),
            Expanded(
              child: DefaultTextStyle(
                style: TextStyle(
                  fontSize: 42.sp,
                ),
                child: Stack(
                  children: [
                    ListView(
                      scrollDirection: Axis.vertical,
                      controller: _scrollController,
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                            left: 48.w,
                            right: 108.w,
                          ),
                          color: Colors.white,
                          child: Column(
                            children: [
                              Container(
                                height: 136.w,
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '当前定位城市',
                                  style: TextStyle(
                                    color: const Color(0xff999999),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 300,
                                child: GridView.count(
                                  crossAxisCount: 3,
                                  mainAxisSpacing: 1,
                                  childAspectRatio: 142 / 57,
                                  crossAxisSpacing: 36.w,
                                  physics: NeverScrollableScrollPhysics(),
                                  children: [
                                    // CityBox(),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      top: 134.w,
                      right: 34.w,
                      child: DefaultTextStyle(
                        style: TextStyle(),
                        child: Column(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  final Color themeColor;

  const SearchBar({Key key, this.themeColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.white,
      height: 144.w,
      child: Container(
        width: 936.w,
        height: 96.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(48.w),
          ),
          color: const Color(0xfff2f2f2),
        ),
        child: TextField(
          cursorColor: themeColor,
          textAlignVertical: TextAlignVertical.bottom,
          textInputAction: TextInputAction.search,
          decoration: InputDecoration(
            hintText: '请输入城市名称',
            hintStyle: TextStyle(
              color: const Color(0xff999999),
              fontSize: 42.sp,
            ),
            prefixIcon: Icon(
              Icons.search,
              color: const Color(0xffaaaaaa),
            ),
            contentPadding: EdgeInsets.symmetric(
              vertical: 25.w,
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
