import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
part 'home_model.g.dart';

List<Cities> citiesFromJson(String str) =>
    List<Cities>.from(json.decode(str).map((x) => Cities.fromJson(x)));

@JsonSerializable()
class Cities {
  String? name;
  String? created;
  String? description;
  String? image;
  List<Populations>? populations;
  String? id;

  Cities(
      {this.name,
      this.created,
      this.description,
      this.image,
      this.populations,
      this.id});

  factory Cities.fromJson(Map<String, dynamic> json) => _$CitiesFromJson(json);

  Map<String, dynamic> toJson() {
    return _$CitiesToJson(this);
  }
}

@JsonSerializable()
class Populations {
  int? year;
  String? population;

  Populations({this.year, this.population});

  factory Populations.fromJson(Map<String, dynamic> json) =>
      _$PopulationsFromJson(json);

  Map<String, dynamic> toJson() {
    return _$PopulationsToJson(this);
  }
}
