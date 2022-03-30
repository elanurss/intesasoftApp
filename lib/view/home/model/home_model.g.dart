// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cities _$CitiesFromJson(Map<String, dynamic> json) => Cities(
      name: json['name'] as String?,
      created: json['created'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
      populations: (json['populations'] as List<dynamic>?)
          ?.map((e) => Populations.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
    );

Map<String, dynamic> _$CitiesToJson(Cities instance) => <String, dynamic>{
      'name': instance.name,
      'created': instance.created,
      'description': instance.description,
      'image': instance.image,
      'populations': instance.populations,
      'id': instance.id,
    };

Populations _$PopulationsFromJson(Map<String, dynamic> json) => Populations(
      year: json['year'] as int?,
      population: json['population'] as String?,
    );

Map<String, dynamic> _$PopulationsToJson(Populations instance) =>
    <String, dynamic>{
      'year': instance.year,
      'population': instance.population,
    };
