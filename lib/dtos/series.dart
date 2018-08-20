
library series;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:marvel/dtos/item.dart';
import 'package:marvel/dtos/serializers.dart';

part 'series.g.dart';

abstract class Series implements Built<Series, SeriesBuilder> {
  Series._();

  factory Series([updates(SeriesBuilder b)]) = _$Series;

  @BuiltValueField(wireName: 'available')
  int get available;
  @BuiltValueField(wireName: 'collectionURI')
  String get collectionURI;
  @BuiltValueField(wireName: 'items')
  BuiltList<Item> get items;
  @BuiltValueField(wireName: 'returned')
  int get returned;
  String toJson() {
    return json.encode(serializers.serializeWith(Series.serializer, this));
  }

  static Series fromJson(String jsonString) {
    return serializers.deserializeWith(
        Series.serializer, json.decode(jsonString));
  }

  static Serializer<Series> get serializer => _$seriesSerializer;
}