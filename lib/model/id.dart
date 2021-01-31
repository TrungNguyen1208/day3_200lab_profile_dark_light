class Id {
  String name;
  String value;

  Id({
      this.name, 
      this.value});

  Id.fromJson(dynamic json) {
    name = json['name'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

}