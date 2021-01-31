class Registered {
  String date;
  int age;

  Registered({
      this.date, 
      this.age});

  Registered.fromJson(dynamic json) {
    date = json['date'];
    age = json['age'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['date'] = date;
    map['age'] = age;
    return map;
  }

}