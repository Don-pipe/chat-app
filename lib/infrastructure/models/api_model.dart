// To parse this JSON data, do
//
//     final apiModel = apiModelFromJson(jsonString);

import 'package:yesnoapp/domain/entities/message.dart';

class ApiModel {
  final String answer;
  final bool forced;
  final String image;

  ApiModel({
    required this.answer,
    required this.forced,
    required this.image,
  });

  factory ApiModel.fromJsonMap(Map<String, dynamic> json) => ApiModel(
        answer: json["answer"],
        forced: json["forced"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "answer": answer,
        "forced": forced,
        "image": image,
      };
  Message toMessaEntity() => Message(
      text: answer == 'yes' ? 'yes' : 'No',
      fromWho: FromWho.hers,
      imageUrl: image);
}
