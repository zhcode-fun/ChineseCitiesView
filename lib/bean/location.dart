class Location {
  double _lat;
  double _lng;

  Location({double lat, double lng}) {
    _lat = lat;
    _lng = lng;
  }

  double get lat => _lat;
  set lat(double lat) => _lat = lat;
  double get lng => _lng;
  set lng(double lng) => _lng = lng;

  Location.fromJson(Map<String, dynamic> json) {
    _lat = json['lat'];
    _lng = json['lng'];
  }
}
