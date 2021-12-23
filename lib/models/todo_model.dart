// To parse this JSON data, do
//
//     final todoModel = todoModelFromJson(jsonString);

import 'dart:convert';

TodoModel todoModelFromJson(String str) => TodoModel.fromJson(json.decode(str));


String todoModelToJson(TodoModel data) => json.encode(data.toJson());

class TodoModel {
    TodoModel({
        required this.message,
        required this.data,
    });

    String message;
    List<Datum> data;

    factory TodoModel.fromJson(Map<String, dynamic> json) => TodoModel(
        message: json["message"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Datum {
    Datum({
        this.isCompleted,
        this.id,
        this.v,
        this.date
    });

    bool? isCompleted;
    String? id;
    int? v;
    DateTime? date;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        isCompleted: json["isCompleted"],
        id: json["_id"],
        v: json["__v"],
        date: DateTime.parse(json["date"]),
    );

    Map<String, dynamic> toJson() => {
        "isCompleted": isCompleted,
        "_id": id,
        "__v": v,
        "date": date!.toIso8601String(),
    };
}
