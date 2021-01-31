class Timezone {
  String offset;
  String description;

  Timezone({
      this.offset, 
      this.description});

  Timezone.fromJson(dynamic json) {
    offset = json['offset'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['offset'] = offset;
    map['description'] = description;
    return map;
  }

}