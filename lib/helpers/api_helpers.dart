import 'dart:convert';
import 'package:jasonplash/globals/global.dart';
import 'package:http/http.dart' as http;
import 'package:jasonplash/model/jsonmodel.dart';

class ApiHelpers {
  ApiHelpers._();

  static final ApiHelpers apiHelpers = ApiHelpers._();

  String baseURI = "https://jsonplaceholder.typicode.com";

  Future<List<PlashHolder>?> getData() async {
    String api = baseURI + Global.endpoint;
    http.Response data = await http.get(Uri.parse(api));

    if (data.statusCode == 200) {
      List decodeData = jsonDecode(data.body);
      List<PlashHolder> allData =
          decodeData.map((e) => PlashHolder.fromMap(data: e)).toList();
      return allData;
    }
    return null;
  }
}
