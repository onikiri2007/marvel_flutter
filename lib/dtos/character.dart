library character;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:marvel/dtos/comics.dart';
import 'package:marvel/dtos/events.dart';
import 'package:marvel/dtos/serializers.dart';
import 'package:marvel/dtos/series.dart';
import 'package:marvel/dtos/stories.dart';
import 'package:marvel/dtos/thumbnail.dart';
import 'package:marvel/dtos/url.dart';

part 'character.g.dart';

abstract class Character implements Built<Character, CharacterBuilder> {
  Character._();

  factory Character([updates(CharacterBuilder b)]) = _$Character;

  @BuiltValueField(wireName: 'id')
  int get id;
  @BuiltValueField(wireName: 'name')
  String get name;
  @BuiltValueField(wireName: 'description')
  String get description;
  @BuiltValueField(wireName: 'modified')
  String get modified;
  @BuiltValueField(wireName: 'thumbnail')
  Thumbnail get thumbnail;
  @BuiltValueField(wireName: 'resourceURI')
  String get resourceURI;
  @BuiltValueField(wireName: 'comics')
  Comics get comics;
  @BuiltValueField(wireName: 'series')
  Series get series;
  @BuiltValueField(wireName: 'stories')
  Stories get stories;
  @BuiltValueField(wireName: 'events')
  Events get events;  
  BuiltList<Url> get urls;
  String toJson() {
    return json.encode(serializers.serializeWith(Character.serializer, this));
  }

  static Character fromJson(String jsonString) {
    return serializers.deserializeWith(
        Character.serializer, json.decode(jsonString));
  }

  static Serializer<Character> get serializer => _$characterSerializer;
}


