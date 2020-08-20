import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class NetworkHelper {

  NetworkHelper(this.url);

  final String url ;

  Future getData() async {

    Response response = await get(url);
    print(response.body);
    String data = response.body;
    var decodedData = jsonDecode(data);

    return decodedData;

  }

}