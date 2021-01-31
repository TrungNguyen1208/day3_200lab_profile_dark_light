class Picture {
  String large;
  String medium;
  String thumbnail;

  Picture({
      this.large, 
      this.medium, 
      this.thumbnail});

  Picture.fromJson(dynamic json) {
    large = json['large'];
    medium = json['medium'];
    thumbnail = json['thumbnail'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['large'] = large;
    map['medium'] = medium;
    map['thumbnail'] = thumbnail;
    return map;
  }

}