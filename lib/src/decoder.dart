import 'ref.dart';

abstract class ModelArrayDecoder {
  int get length;

  ModelArrayDecoder getArray();
  DateTime getDate();
  int getInt();
  ModelMapDecoder getMap();
  ModelObjectDecoder getObject();
  ModelRef getRef();
  String getString();
}

abstract class ModelMapDecoder {
  int get length;

  ModelArrayDecoder getArray();
  DateTime getDate();
  int getInt();
  String getKey();
  ModelMapDecoder getMap();
  ModelObjectDecoder getObject();
  ModelRef getRef();
  String getString();
}

abstract class ModelObjectDecoder {
  ModelArrayDecoder getArray(String name);
  DateTime getDate(String name);
  int getInt(String name);
  ModelMapDecoder getMap(String name);
  ModelObjectDecoder getObject(String name);
  ModelRef getRef(String name);
  String getString(String name);
}
