import 'package:Chinese_cities_view/bean/location.dart';

/// 城市

class City {
  String _id;
  String _name;
  String _fullname;
  List<String> _pinyin;
  Location _location;

  City(
      {String id,
      String name,
      String fullname,
      List<String> pinyin,
      Location location}) {
    _id = id;
    _name = name;
    _fullname = fullname;
    _pinyin = pinyin;
    _location = location;
  }

  String get id => _id;
  set id(String id) => _id = id;
  String get name => _name;
  set name(String name) => _name = name;
  String get fullname => _fullname;
  set fullname(String fullname) => _fullname = fullname;
  List<String> get pinyin => _pinyin;
  set pinyin(List<String> pinyin) => _pinyin = pinyin;
  Location get location => _location;
  set location(Location location) => _location = location;

  City.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _fullname = json['fullname'];
    _pinyin = json['pinyin'].cast<String>();
    _location =
        json['location'] != null ? Location.fromJson(json['location']) : null;
  }
}
