// GENERATED CODE - DO NOT MODIFY BY HAND

part of character;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_catches_without_on_clauses
// ignore_for_file: avoid_returning_this
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first

Serializer<Character> _$characterSerializer = new _$CharacterSerializer();

class _$CharacterSerializer implements StructuredSerializer<Character> {
  @override
  final Iterable<Type> types = const [Character, _$Character];
  @override
  final String wireName = 'Character';

  @override
  Iterable serialize(Serializers serializers, Character object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'modified',
      serializers.serialize(object.modified,
          specifiedType: const FullType(String)),
      'thumbnail',
      serializers.serialize(object.thumbnail,
          specifiedType: const FullType(Thumbnail)),
      'resourceURI',
      serializers.serialize(object.resourceURI,
          specifiedType: const FullType(String)),
      'comics',
      serializers.serialize(object.comics,
          specifiedType: const FullType(Comics)),
      'series',
      serializers.serialize(object.series,
          specifiedType: const FullType(Series)),
      'stories',
      serializers.serialize(object.stories,
          specifiedType: const FullType(Stories)),
      'events',
      serializers.serialize(object.events,
          specifiedType: const FullType(Events)),
      'urls',
      serializers.serialize(object.urls,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Url)])),
    ];

    return result;
  }

  @override
  Character deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CharacterBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'modified':
          result.modified = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'thumbnail':
          result.thumbnail.replace(serializers.deserialize(value,
              specifiedType: const FullType(Thumbnail)) as Thumbnail);
          break;
        case 'resourceURI':
          result.resourceURI = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'comics':
          result.comics.replace(serializers.deserialize(value,
              specifiedType: const FullType(Comics)) as Comics);
          break;
        case 'series':
          result.series.replace(serializers.deserialize(value,
              specifiedType: const FullType(Series)) as Series);
          break;
        case 'stories':
          result.stories.replace(serializers.deserialize(value,
              specifiedType: const FullType(Stories)) as Stories);
          break;
        case 'events':
          result.events.replace(serializers.deserialize(value,
              specifiedType: const FullType(Events)) as Events);
          break;
        case 'urls':
          result.urls.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Url)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$Character extends Character {
  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String modified;
  @override
  final Thumbnail thumbnail;
  @override
  final String resourceURI;
  @override
  final Comics comics;
  @override
  final Series series;
  @override
  final Stories stories;
  @override
  final Events events;
  @override
  final BuiltList<Url> urls;

  factory _$Character([void updates(CharacterBuilder b)]) =>
      (new CharacterBuilder()..update(updates)).build();

  _$Character._(
      {this.id,
      this.name,
      this.description,
      this.modified,
      this.thumbnail,
      this.resourceURI,
      this.comics,
      this.series,
      this.stories,
      this.events,
      this.urls})
      : super._() {
    if (id == null) throw new BuiltValueNullFieldError('Character', 'id');
    if (name == null) throw new BuiltValueNullFieldError('Character', 'name');
    if (description == null)
      throw new BuiltValueNullFieldError('Character', 'description');
    if (modified == null)
      throw new BuiltValueNullFieldError('Character', 'modified');
    if (thumbnail == null)
      throw new BuiltValueNullFieldError('Character', 'thumbnail');
    if (resourceURI == null)
      throw new BuiltValueNullFieldError('Character', 'resourceURI');
    if (comics == null)
      throw new BuiltValueNullFieldError('Character', 'comics');
    if (series == null)
      throw new BuiltValueNullFieldError('Character', 'series');
    if (stories == null)
      throw new BuiltValueNullFieldError('Character', 'stories');
    if (events == null)
      throw new BuiltValueNullFieldError('Character', 'events');
    if (urls == null) throw new BuiltValueNullFieldError('Character', 'urls');
  }

  @override
  Character rebuild(void updates(CharacterBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  CharacterBuilder toBuilder() => new CharacterBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! Character) return false;
    return id == other.id &&
        name == other.name &&
        description == other.description &&
        modified == other.modified &&
        thumbnail == other.thumbnail &&
        resourceURI == other.resourceURI &&
        comics == other.comics &&
        series == other.series &&
        stories == other.stories &&
        events == other.events &&
        urls == other.urls;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc($jc(0, id.hashCode), name.hashCode),
                                        description.hashCode),
                                    modified.hashCode),
                                thumbnail.hashCode),
                            resourceURI.hashCode),
                        comics.hashCode),
                    series.hashCode),
                stories.hashCode),
            events.hashCode),
        urls.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Character')
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('modified', modified)
          ..add('thumbnail', thumbnail)
          ..add('resourceURI', resourceURI)
          ..add('comics', comics)
          ..add('series', series)
          ..add('stories', stories)
          ..add('events', events)
          ..add('urls', urls))
        .toString();
  }
}

class CharacterBuilder implements Builder<Character, CharacterBuilder> {
  _$Character _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _modified;
  String get modified => _$this._modified;
  set modified(String modified) => _$this._modified = modified;

  ThumbnailBuilder _thumbnail;
  ThumbnailBuilder get thumbnail =>
      _$this._thumbnail ??= new ThumbnailBuilder();
  set thumbnail(ThumbnailBuilder thumbnail) => _$this._thumbnail = thumbnail;

  String _resourceURI;
  String get resourceURI => _$this._resourceURI;
  set resourceURI(String resourceURI) => _$this._resourceURI = resourceURI;

  ComicsBuilder _comics;
  ComicsBuilder get comics => _$this._comics ??= new ComicsBuilder();
  set comics(ComicsBuilder comics) => _$this._comics = comics;

  SeriesBuilder _series;
  SeriesBuilder get series => _$this._series ??= new SeriesBuilder();
  set series(SeriesBuilder series) => _$this._series = series;

  StoriesBuilder _stories;
  StoriesBuilder get stories => _$this._stories ??= new StoriesBuilder();
  set stories(StoriesBuilder stories) => _$this._stories = stories;

  EventsBuilder _events;
  EventsBuilder get events => _$this._events ??= new EventsBuilder();
  set events(EventsBuilder events) => _$this._events = events;

  ListBuilder<Url> _urls;
  ListBuilder<Url> get urls => _$this._urls ??= new ListBuilder<Url>();
  set urls(ListBuilder<Url> urls) => _$this._urls = urls;

  CharacterBuilder();

  CharacterBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _description = _$v.description;
      _modified = _$v.modified;
      _thumbnail = _$v.thumbnail?.toBuilder();
      _resourceURI = _$v.resourceURI;
      _comics = _$v.comics?.toBuilder();
      _series = _$v.series?.toBuilder();
      _stories = _$v.stories?.toBuilder();
      _events = _$v.events?.toBuilder();
      _urls = _$v.urls?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Character other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Character;
  }

  @override
  void update(void updates(CharacterBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Character build() {
    _$Character _$result;
    try {
      _$result = _$v ??
          new _$Character._(
              id: id,
              name: name,
              description: description,
              modified: modified,
              thumbnail: thumbnail.build(),
              resourceURI: resourceURI,
              comics: comics.build(),
              series: series.build(),
              stories: stories.build(),
              events: events.build(),
              urls: urls.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'thumbnail';
        thumbnail.build();

        _$failedField = 'comics';
        comics.build();
        _$failedField = 'series';
        series.build();
        _$failedField = 'stories';
        stories.build();
        _$failedField = 'events';
        events.build();
        _$failedField = 'urls';
        urls.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Character', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
