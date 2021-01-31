class Coordinates {
  String latitude;
  String longitude;

  Coordinates({
      this.latitude, 
      this.longitude});

  Coordinates.fromJson(dynamic json) {
    latitude = json['latitude'];
    longitude = json['longitude'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['latitude'] = latitude;
    map['longitude'] = longitude;
    return map;
  }

}