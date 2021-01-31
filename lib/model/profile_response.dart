import 'results.dart';
import 'info.dart';

class ProfileResponse {
  List<Results> results;
  Info info;

  ProfileResponse({
      this.results, 
      this.info});

  ProfileResponse.fromJson(dynamic json) {
    if (json['results'] != null) {
      results = [];
      json['results'].forEach((v) {
        results.add(Results.fromJson(v));
      });
    }
    info = json['info'] != null ? Info.fromJson(json['info']) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (results != null) {
      map['results'] = results.map((v) => v.toJson()).toList();
    }
    if (info != null) {
      map['info'] = info.toJson();
    }
    return map;
  }

}