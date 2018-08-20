library events;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:marvel/dtos/item.dart';
import 'package:marvel/dtos/serializers.dart';

part 'events.g.dart';

abstract class Events implements Built<Events, EventsBuilder> {
  Events._();

  factory Events([updates(EventsBuilder b)]) = _$Events;

  @BuiltValueField(wireName: 'available')
  int get available;
  @BuiltValueField(wireName: 'collectionURI')
  String get collectionURI;
  @BuiltValueField(wireName: 'items')
  BuiltList<Item> get items;
  @BuiltValueField(wireName: 'returned')
  int get returned;
  String toJson() {
    return json.encode(serializers.serializeWith(Events.serializer, this));
  }

  static Events fromJson(String jsonString) {
    return serializers.deserializeWith(
        Events.serializer, json.decode(jsonString));
  }

  static Serializer<Events> get serializer => _$eventsSerializer;
}