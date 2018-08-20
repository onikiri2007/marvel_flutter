library stories;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:marvel/dtos/item.dart';
import 'package:marvel/dtos/serializers.dart';

part 'stories.g.dart';

abstract class Stories implements Built<Stories, StoriesBuilder> {
  Stories._();

  factory Stories([updates(StoriesBuilder b)]) = _$Stories;

  @BuiltValueField(wireName: 'available')
  int get available;
  @BuiltValueField(wireName: 'collectionURI')
  String get collectionURI;
  @BuiltValueField(wireName: 'items')
  BuiltList<Item> get items;
  @BuiltValueField(wireName: 'returned')
  int get returned;
  String toJson() {
    return json.encode(serializers.serializeWith(Stories.serializer, this));
  }

  static Stories fromJson(String jsonString) {
    return serializers.deserializeWith(
        Stories.serializer, json.decode(jsonString));
  }

  static Serializer<Stories> get serializer => _$storiesSerializer;
}