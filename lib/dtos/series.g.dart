// GENERATED CODE - DO NOT MODIFY BY HAND

part of series;

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

Serializer<Series> _$seriesSerializer = new _$SeriesSerializer();

class _$SeriesSerializer implements StructuredSerializer<Series> {
  @override
  final Iterable<Type> types = const [Series, _$Series];
  @override
  final String wireName = 'Series';

  @override
  Iterable serialize(Serializers serializers, Series object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'available',
      serializers.serialize(object.available,
          specifiedType: const FullType(int)),
      'collectionURI',
      serializers.serialize(object.collectionURI,
          specifiedType: const FullType(String)),
      'items',
      serializers.serialize(object.items,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Item)])),
      'returned',
      serializers.serialize(object.returned,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  Series deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SeriesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'available':
          result.available = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'collectionURI':
          result.collectionURI = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'items':
          result.items.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Item)]))
              as BuiltList);
          break;
        case 'returned':
          result.returned = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Series extends Series {
  @override
  final int available;
  @override
  final String collectionURI;
  @override
  final BuiltList<Item> items;
  @override
  final int returned;

  factory _$Series([void updates(SeriesBuilder b)]) =>
      (new SeriesBuilder()..update(updates)).build();

  _$Series._({this.available, this.collectionURI, this.items, this.returned})
      : super._() {
    if (available == null)
      throw new BuiltValueNullFieldError('Series', 'available');
    if (collectionURI == null)
      throw new BuiltValueNullFieldError('Series', 'collectionURI');
    if (items == null) throw new BuiltValueNullFieldError('Series', 'items');
    if (returned == null)
      throw new BuiltValueNullFieldError('Series', 'returned');
  }

  @override
  Series rebuild(void updates(SeriesBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SeriesBuilder toBuilder() => new SeriesBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! Series) return false;
    return available == other.available &&
        collectionURI == other.collectionURI &&
        items == other.items &&
        returned == other.returned;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, available.hashCode), collectionURI.hashCode),
            items.hashCode),
        returned.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Series')
          ..add('available', available)
          ..add('collectionURI', collectionURI)
          ..add('items', items)
          ..add('returned', returned))
        .toString();
  }
}

class SeriesBuilder implements Builder<Series, SeriesBuilder> {
  _$Series _$v;

  int _available;
  int get available => _$this._available;
  set available(int available) => _$this._available = available;

  String _collectionURI;
  String get collectionURI => _$this._collectionURI;
  set collectionURI(String collectionURI) =>
      _$this._collectionURI = collectionURI;

  ListBuilder<Item> _items;
  ListBuilder<Item> get items => _$this._items ??= new ListBuilder<Item>();
  set items(ListBuilder<Item> items) => _$this._items = items;

  int _returned;
  int get returned => _$this._returned;
  set returned(int returned) => _$this._returned = returned;

  SeriesBuilder();

  SeriesBuilder get _$this {
    if (_$v != null) {
      _available = _$v.available;
      _collectionURI = _$v.collectionURI;
      _items = _$v.items?.toBuilder();
      _returned = _$v.returned;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Series other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Series;
  }

  @override
  void update(void updates(SeriesBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Series build() {
    _$Series _$result;
    try {
      _$result = _$v ??
          new _$Series._(
              available: available,
              collectionURI: collectionURI,
              items: items.build(),
              returned: returned);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Series', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
