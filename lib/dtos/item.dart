library item;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:marvel/dtos/serializers.dart';

part 'item.g.dart';

abstract class Item implements Built<Item, ItemBuilder> {
  Item._();

  factory Item([updates(ItemBuilder b)]) = _$Item;

  @BuiltValueField(wireName: 'resourceURI')
  String get resourceURI;
  @BuiltValueField(wireName: 'name')
  String get name;
  String toJson() {
    return json.encode(serializers.serializeWith(Item.serializer, this));
  }

  static Item fromJson(String jsonString) {
    return serializers.deserializeWith(
        Item.serializer, json.decode(jsonString));
  }

  static Serializer<Item> get serializer => _$itemSerializer;
}
