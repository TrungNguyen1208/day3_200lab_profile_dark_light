class Dob {
  String date;
  int age;

  Dob({
      this.date, 
      this.age});

  Dob.fromJson(dynamic json) {
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