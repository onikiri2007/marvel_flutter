// GENERATED CODE - DO NOT MODIFY BY HAND

part of thumbnail;

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

Serializer<Thumbnail> _$thumbnailSerializer = new _$ThumbnailSerializer();

class _$ThumbnailSerializer implements StructuredSerializer<Thumbnail> {
  @override
  final Iterable<Type> types = const [Thumbnail, _$Thumbnail];
  @override
  final String wireName = 'Thumbnail';

  @override
  Iterable serialize(Serializers serializers, Thumbnail object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'path',
      serializers.serialize(object.path, specifiedType: const FullType(String)),
      'extension',
      serializers.serialize(object.extension,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Thumbnail deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ThumbnailBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'path':
          result.path = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'extension':
          result.extension = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Thumbnail extends Thumbnail {
  @override
  final String path;
  @override
  final String extension;

  factory _$Thumbnail([void updates(ThumbnailBuilder b)]) =>
      (new ThumbnailBuilder()..update(updates)).build();

  _$Thumbnail._({this.path, this.extension}) : super._() {
    if (path == null) throw new BuiltValueNullFieldError('Thumbnail', 'path');
    if (extension == null)
      throw new BuiltValueNullFieldError('Thumbnail', 'extension');
  }

  @override
  Thumbnail rebuild(void updates(ThumbnailBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ThumbnailBuilder toBuilder() => new ThumbnailBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! Thumbnail) return false;
    return path == other.path && extension == other.extension;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, path.hashCode), extension.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Thumbnail')
          ..add('path', path)
          ..add('extension', extension))
        .toString();
  }
}

class ThumbnailBuilder implements Builder<Thumbnail, ThumbnailBuilder> {
  _$Thumbnail _$v;

  String _path;
  String get path => _$this._path;
  set path(String path) => _$this._path = path;

  String _extension;
  String get extension => _$this._extension;
  set extension(String extension) => _$this._extension = extension;

  ThumbnailBuilder();

  ThumbnailBuilder get _$this {
    if (_$v != null) {
      _path = _$v.path;
      _extension = _$v.extension;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Thumbnail other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Thumbnail;
  }

  @override
  void update(void updates(ThumbnailBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Thumbnail build() {
    final _$result = _$v ?? new _$Thumbnail._(path: path, extension: extension);
    replace(_$result);
    return _$result;
  }
}
