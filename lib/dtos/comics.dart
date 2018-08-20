library comics;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:marvel/dtos/item.dart';
import 'package:marvel/dtos/serializers.dart';

part 'comics.g.dart';

abstract class Comics implements Built<Comics, ComicsBuilder> {
  Comics._();

  factory Comics([updates(ComicsBuilder b)]) = _$Comics;

  @BuiltValueField(wireName: 'available')
  int get available;
  @BuiltValueField(wireName: 'collectionURI')
  String get collectionURI;
  @BuiltValueField(wireName: 'items')
  BuiltList<Item> get items;
  @BuiltValueField(wireName: 'returned')
  int get returned;
  String toJson() {
    return json.encode(serializers.serializeWith(Comics.serializer, this));
  }

  static Comics fromJson(String jsonString) {
    return serializers.deserializeWith(
        Comics.serializer, json.decode(jsonString));
  }

  static Serializer<Comics> get serializer => _$comicsSerializer;
}