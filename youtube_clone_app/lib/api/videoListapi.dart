import 'dart:convert' as convert;

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:youtube_clone_app/api/api_constants.dart';

Future fetchVideosList() async {
  final response = await http.get(Uri.parse(Constants.videoListUrl));

  if (response.statusCode == 200) {
    debugPrint("Api called succesfully");
    //debugPrint(response.body.toString());
    var jsonResponse =
        convert.jsonDecode(response.body) as Map<String, dynamic>;
    debugPrint("Successfully Mapped");
  } else {
    throw Exception("Cant fetch videos");
  }
}

// class VideoList {
//   List<Items>? items;

//   VideoList.fromJson(Map<String, dynamic> json) {
//     if (json['items'] != null) {
//       items = <Items>[];
//       json['items'].forEach((v) {
//         items!.add(Items.fromJson(v));
//       });
//     }
//   }
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.items != null) {
//       data['items'] = this.items!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class Items {
  
//   Items.fromJson();

//   Map<String, dynamic> toJson() {
//     return;
//   }
// }

