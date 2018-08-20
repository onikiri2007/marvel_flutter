
library url;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:marvel/dtos/serializers.dart';

part 'url.g.dart';

abstract class Url implements Built<Url, UrlBuilder> {
  Url._();

  factory Url([updates(UrlBuilder b)]) = _$Url;

  @BuiltValueField(wireName: 'type')
  String get type;
  @BuiltValueField(wireName: 'url')
  String get url;
  String toJson() {
    return json.encode(serializers.serializeWith(Url.serializer, this));
  }

  static Url fromJson(String jsonString) {
    return serializers.deserializeWith(
        Url.serializer, json.decode(jsonString));
  }

  static Serializer<Url> get serializer => _$urlSerializer;
}
