class Street {
  int number;
  String name;

  Street({
      this.number, 
      this.name});

  Street.fromJson(dynamic json) {
    number = json['number'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['number'] = number;
    map['name'] = name;
    return map;
  }

}