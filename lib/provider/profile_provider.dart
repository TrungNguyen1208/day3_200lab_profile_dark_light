import 'dart:async';
import 'dart:convert';

import 'package:day3_200lab_profile_dark_light/model/profile_response.dart';
import 'package:http/http.dart' as http;

class ProfileProvider {
  final String _domain = 'randomuser.me';

  ProfileResponse response;

  final _streamCtrl= StreamController<ProfileResponse>.broadcast();
  Function(ProfileResponse) get _sink => _streamCtrl.sink.add;
  Stream<ProfileResponse> get profileStream => _streamCtrl.stream;

  Future<ProfileResponse> _processRequestData(Uri url) async {
    final resp = await http.get(url);
    final decodedData = json.decode(resp.body);
    final data = ProfileResponse.fromJson(decodedData);
    return data;
  }

  Future<ProfileResponse> getProfileInfo() async {
    // Fix call API get data again
    if (response != null) {
      return response;
    }
    final url = Uri.https(_domain, '/api');
    response = await _processRequestData(url);
    _sink(response);
    return response;
  }

  void disposeStreams() {
    _streamCtrl?.close();
  }
}