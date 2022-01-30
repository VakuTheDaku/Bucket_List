import 'dart:convert';

import 'package:http/http.dart' as http;
class RequestResult
{
  bool ok;
  dynamic data;
  RequestResult(this.ok, this.data);
}
const PROTOCOL = "http";
const DOMAIN= "192.168.43.130:3000";

Future<RequestResult> http_post(String route, [dynamic data]) async{

  var url="$PROTOCOL://$DOMAIN/$route";

  String body = json.encode(data);

  var result= await http.post(
    url,
    headers: {"Content-Type": "application/json"},
    body: body,
  );
  return RequestResult(true, jsonDecode(result.body));

}