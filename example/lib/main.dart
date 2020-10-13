import 'package:chinese_cities_view/bean/city.dart';
import 'package:chinese_cities_view/chinese_cities_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  City _city;
  CitiesView _citiesView;

  @override
  Widget build(BuildContext pageCtx) {
    _citiesView = CitiesView(pageCtx);
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
        centerTitle: true,
      ),
      body: Container(
        child: DefaultTextStyle(
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
          child: Column(
            children: [
              SizedBox(
                child: Text('已选择的城市：${_city?.fullname ?? ''}'),
              ),
              SizedBox(height: 20),
              CupertinoButton(
                child: Text(
                  '点击选择城市',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.blue,
                onPressed: () async {
                  print('======');
                  _citiesView.chooseCity();
                },
              ),
              Container(
                width: 284,
                height: 114,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xffe5e5e5),
                  ),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  '合肥',
                  style: TextStyle(
                    fontSize: 20,
                    color: const Color(0xff333333),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
