import 'dart:convert';

import 'package:http/http.dart' as http;
class RequestResult
{
  bool ok;
  dynamic data;
  RequestResult(this.ok, this.data);
}
const PROTOCOL = "https";
const DOMAIN= "backend-bucket-list.herokuapp.com";


Future<RequestResult> http_get(String route, [dynamic data]) async{
  var dataStr =jsonEncode(data);
  var url="$PROTOCOL://$DOMAIN/$route";
  var result=await http.get(url);
  return RequestResult(true, jsonDecode(result.body));
}



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