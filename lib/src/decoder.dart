import 'dart:typed_data';

import 'ref.dart';

abstract class ModelArrayDecoder {
  int get length;

  ModelArrayDecoder getArray();
  bool getBool();
  Uint8List getBytes();
  double getFloat();
  int getInt();
  ModelMapDecoder getMap();
  ModelObjectDecoder getObject();
  ModelRef getRef();
  String getString();
  DateTime getTime();
}

abstract class ModelMapDecoder {
  int get length;

  ModelArrayDecoder getArray();
  bool getBool();
  Uint8List getBytes();
  double getFloat();
  int getInt();
  String getKey();
  ModelMapDecoder getMap();
  ModelObjectDecoder getObject();
  ModelRef getRef();
  String getString();
  DateTime getTime();
}

abstract class ModelObjectDecoder {
  ModelArrayDecoder getArray(String name);
  bool getBool(String name);
  Uint8List getBytes(String name);
  double getFloat(String name);
  int getInt(String name);
  ModelMapDecoder getMap(String name);
  ModelObjectDecoder getObject(String name);
  ModelRef getRef(String name);
  String getString(String name);
  DateTime getTime(String name);
}
