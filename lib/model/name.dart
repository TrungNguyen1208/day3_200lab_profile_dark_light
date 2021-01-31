class Name {
  String title;
  String first;
  String last;

  Name({
      this.title, 
      this.first, 
      this.last});

  Name.fromJson(dynamic json) {
    title = json['title'];
    first = json['first'];
    last = json['last'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['title'] = title;
    map['first'] = first;
    map['last'] = last;
    return map;
  }

}