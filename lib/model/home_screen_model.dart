// To parse this JSON data, do
//
//     final homeServices = homeServicesFromJson(jsonString);

import 'dart:convert';

List<HomeServicesModel> homeServicesModelFromJson(String str) =>
    List<HomeServicesModel>.from(
        json.decode(str).map((x) => HomeServicesModel.fromJson(x)));

String homeServicesModelToJson(List<HomeServicesModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class HomeServicesModel {
  HomeServicesModel({
    this.id,
    this.taskTitle,
    this.img1,
  });

  int? id;
  String? taskTitle;
  String? img1;

  factory HomeServicesModel.fromJson(Map<String, dynamic> json) =>
      HomeServicesModel(
        id: json["id"],
        taskTitle: json["task_title"],
        img1: json["img_1"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "task_title": taskTitle,
        "img_1": img1,
      };
}
