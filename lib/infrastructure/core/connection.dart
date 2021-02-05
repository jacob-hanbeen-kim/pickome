import 'package:http/http.dart';
import 'dart:convert';

postUser(email, password, firstName, lastName) async {
  Response response = await post(
    'https://kve860cw2m.execute-api.us-east-2.amazonaws.com/dev/user',
    body: jsonEncode({
      'email': email,
      'password': password,
      'firstName': firstName,
      'lastName': lastName
    }),
    headers: {"content-type": "application/json"},
  );

  print(response.body);
}

authenticateUser(username, password) async {
  Response response = await post(
    'https://kve860cw2m.execute-api.us-east-2.amazonaws.com/dev/auth',
    body: jsonEncode({'username': username, 'password': password}),
    headers: {"content-type": "application/json"},
  );

  dynamic res = jsonDecode(response.body);
  print(res);

  int statusCode = response.statusCode;
  if (statusCode == 200) {
    // return res.idToken.jwtToken;
    return true;
  } else {
    // return res.message;
    return false;
  }
}
