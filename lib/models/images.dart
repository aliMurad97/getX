// To parse this JSON data, do
//
//     final imagesModel = imagesModelFromJson(jsonString);

import 'dart:convert';

List<ImagesModel> imagesModelFromJson(String str) => List<ImagesModel>.from(json.decode(str).map((x) => ImagesModel.fromJson(x)));

String imagesModelToJson(List<ImagesModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ImagesModel {
    ImagesModel({
        this.name,
        this.latinName,
        this.animalType,
        this.activeTime,
        this.lengthMin,
        this.lengthMax,
        this.weightMin,
        this.weightMax,
        this.lifespan,
        this.habitat,
        this.diet,
        this.geoRange,
        this.imageLink,
        this.id,
    });

    String? name;
    String? latinName;
    String? animalType;
    String? activeTime;
    String? lengthMin;
    String? lengthMax;
    String? weightMin;
    String? weightMax;
    String? lifespan;
    String? habitat;
    String? diet;
    String? geoRange;
    String? imageLink;
    int? id;

    factory ImagesModel.fromJson(Map<String, dynamic> json) => ImagesModel(
        name: json["name"],
        latinName: json["latin_name"],
        animalType: json["animal_type"],
        activeTime: json["active_time"],
        lengthMin: json["length_min"],
        lengthMax: json["length_max"],
        weightMin: json["weight_min"],
        weightMax: json["weight_max"],
        lifespan: json["lifespan"],
        habitat: json["habitat"],
        diet: json["diet"],
        geoRange: json["geo_range"],
        imageLink: json["image_link"],
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "latin_name": latinName,
        "animal_type": animalType,
        "active_time": activeTime,
        "length_min": lengthMin,
        "length_max": lengthMax,
        "weight_min": weightMin,
        "weight_max": weightMax,
        "lifespan": lifespan,
        "habitat": habitat,
        "diet": diet,
        "geo_range": geoRange,
        "image_link": imageLink,
        "id": id,
    };
}
