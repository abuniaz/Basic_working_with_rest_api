// To parse this JSON data, do
//
//     final postmodel = postmodelFromJson(jsonString);

import 'dart:convert';

List<Postmodel> postmodelFromJson(String str) =>
    List<Postmodel>.from(json.decode(str).map((x) => Postmodel.fromJson(x)));

String postmodelToJson(List<Postmodel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Postmodel {
  Postmodel({
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  });

  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;

  factory Postmodel.fromJson(Map<dynamic, dynamic> json) => Postmodel(
        albumId: json["albumId"],
        id: json["id"],
        title: json["title"],
        url: json["url"],
        thumbnailUrl: json["thumbnailUrl"],
      );

  Map<String, dynamic> toJson() => {
        "albumId": albumId,
        "id": id,
        "title": title,
        "url": url,
        "thumbnailUrl": thumbnailUrl,
      };
}
