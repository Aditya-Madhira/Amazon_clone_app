import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class AuthP  with ChangeNotifier {
  String _token;
  DateTime _expiryDate;
  String _userId;

  Future<void> authenticate(String email, String password,
      String urlSegment) async {
    final url = 'https://www.googleapis.com/identitytoolkit/v3/relyingparty/$urlSegment?key=AIzaSyC9bn86pHoJlw_p0gLrRKKjHd7websBvxI';
    final resp=await http.post(url,body: json.encode({
      'email': email,
      'password':password,
      'returnSecureToken':true,
    }));


  }
}
