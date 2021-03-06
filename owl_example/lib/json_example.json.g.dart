// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: JsonGenerator
// Target: library json_mapping_example
// **************************************************************************

// Generated by owl 0.2.1
// https://github.com/agilord/owl

// ignore: unused_import, library_prefixes
import 'json_example.dart';
// ignore: unused_import, library_prefixes
import 'dart:convert';
// ignore: unused_import, library_prefixes
import 'package:owl/util/json/core.dart' as _owl_json;

// **************************************************************************
// Generator: JsonGenerator
// Target: class Entity
// **************************************************************************

/// Mapper for Entity
abstract class EntityMapper {
  /// Converts an instance of Entity to Map.
  static Map<String, dynamic> map(Entity object) {
    if (object == null) return null;
    return (new _owl_json.MapBuilder(ordered: true)
          ..put('stringProperty', object.stringProperty)
          ..put('intProperty', object.intProperty)
          ..put('intList', object.intList?.toList())
          ..put('dateTimeProperty',
              _owl_json.DateTimeMapper.map(object.dateTimeProperty))
          ..put('dateTimeList',
              object.dateTimeList?.map(_owl_json.DateTimeMapper.map)?.toList())
          ..put('alt_name', object.alternativeName)
          ..put(
              'children', object.children?.map(ChildClassMapper.map)?.toList())
          ..put('virtualField', object.virtualField))
        .toMap();
  }

  /// Converts a Map to an instance of Entity.
  static Entity parse(Map<String, dynamic> map) {
    if (map == null) return null;
    final Entity object = new Entity();
    object.stringProperty = map['stringProperty'];
    object.intProperty = map['intProperty'];

    // ignore: avoid_as
    object.intList = (map['intList'] as List<int>)?.toList();
    object.dateTimeProperty =
        _owl_json.DateTimeMapper.parse(map['dateTimeProperty']);

    // ignore: avoid_as
    object.dateTimeList = (map['dateTimeList'] as List<dynamic>)
        ?.map(_owl_json.DateTimeMapper.parse)
        ?.toList();
    object.alternativeName = map['alt_name'];

    // ignore: avoid_as
    object.children = (map['children'] as List<dynamic>)
        ?.map(ChildClassMapper.parse)
        ?.toList();
    object.virtualField = map['virtualField'];
    return object;
  }

  /// Converts a JSON string to an instance of Entity.
  static Entity fromJson(String json) {
    if (json == null || json.isEmpty) return null;
    final Map<String, dynamic> map = JSON.decoder.convert(json);
    return parse(map);
  }

  /// Converts an instance of Entity to JSON string.
  static String toJson(Entity object) {
    if (object == null) return null;
    return JSON.encoder.convert(map(object));
  }
}

// **************************************************************************
// Generator: JsonGenerator
// Target: class ChildClass
// **************************************************************************

/// Mapper for ChildClass
abstract class ChildClassMapper {
  /// Converts an instance of ChildClass to Map.
  static Map<String, dynamic> map(ChildClass object) {
    if (object == null) return null;
    return (new _owl_json.MapBuilder(ordered: false)
          ..put('id', object.id)
          ..put('left', ChildClassMapper.map(object.left))
          ..put('right', ChildClassMapper.map(object.right))
          ..put('map', object.map))
        .toMap();
  }

  /// Converts a Map to an instance of ChildClass.
  static ChildClass parse(Map<String, dynamic> map) {
    if (map == null) return null;
    final ChildClass object = new ChildClass();
    object.id = map['id'];
    object.left = ChildClassMapper.parse(map['left']);
    object.right = ChildClassMapper.parse(map['right']);
    object.map = map['map'];
    return object;
  }

  /// Converts a JSON string to an instance of ChildClass.
  static ChildClass fromJson(String json) {
    if (json == null || json.isEmpty) return null;
    final Map<String, dynamic> map = JSON.decoder.convert(json);
    return parse(map);
  }

  /// Converts an instance of ChildClass to JSON string.
  static String toJson(ChildClass object) {
    if (object == null) return null;
    return JSON.encoder.convert(map(object));
  }
}

// **************************************************************************
// Generator: JsonGenerator
// Target: class WithEqualsAndHash
// **************************************************************************

/// Mapper for WithEqualsAndHash
abstract class WithEqualsAndHashMapper {
  /// Converts an instance of WithEqualsAndHash to Map.
  static Map<String, dynamic> map(WithEqualsAndHash object) {
    if (object == null) return null;
    return (new _owl_json.MapBuilder(ordered: false)
          ..put('id', object.id)
          ..put('text', object.text))
        .toMap();
  }

  /// Converts a Map to an instance of WithEqualsAndHash.
  static WithEqualsAndHash parse(Map<String, dynamic> map) {
    if (map == null) return null;
    final WithEqualsAndHash object = new WithEqualsAndHash();
    object.id = map['id'];
    object.text = map['text'];
    return object;
  }

  /// Converts a JSON string to an instance of WithEqualsAndHash.
  static WithEqualsAndHash fromJson(String json) {
    if (json == null || json.isEmpty) return null;
    final Map<String, dynamic> map = JSON.decoder.convert(json);
    return parse(map);
  }

  /// Converts an instance of WithEqualsAndHash to JSON string.
  static String toJson(WithEqualsAndHash object) {
    if (object == null) return null;
    return JSON.encoder.convert(map(object));
  }
}
