import 'dart:async';
import 'dart:convert';

import 'package:day3_200lab_profile_dark_light/model/profile_response.dart';
import 'package:http/http.dart' as http;

class ProfileProvider {
  final String _domain = 'randomuser.me';
  final ProfileResponse response = null;

  Future<ProfileResponse> _processRequestData(Uri url) async {
    final resp = await http.get(url);
    final decodedData = json.decode(resp.body);
    final data = ProfileResponse.fromJson(decodedData);
    return data;
  }

  Future<ProfileResponse> getProfileInfo() async {
    if (response != null) {
      return response;
    }
    final url = Uri.https(_domain, '/api');
    final resp = await _processRequestData(url);
    return resp;
  }
}