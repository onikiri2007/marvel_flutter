import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:marvel/dtos/character.dart';
import 'package:marvel/dtos/comics.dart';
import 'package:marvel/dtos/events.dart';
import 'package:marvel/dtos/item.dart';
import 'package:marvel/dtos/series.dart';
import 'package:marvel/dtos/stories.dart';
import 'package:marvel/dtos/thumbnail.dart';
import 'package:marvel/dtos/url.dart';

part 'serializers.g.dart';

@SerializersFor(const [
    Item,
    Character,
    Comics,
    Events,
    Series,
    Stories,
    Thumbnail,
    Url
])

final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();