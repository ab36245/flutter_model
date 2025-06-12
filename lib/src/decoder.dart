import 'ref.dart';

abstract class ModelArrayDecoder {
  int get length;

  ModelArrayDecoder getArray();
  DateTime getDate();
  int getInt();
  ModelObjectDecoder getObject();
  ModelRef getRef();
  String getString();
}

abstract class ModelObjectDecoder {
  ModelArrayDecoder getArray(String name);
  DateTime getDate(String name);
  int getInt(String name);
  ModelObjectDecoder getObject(String name);
  ModelRef getRef(String name);
  String getString(String name);
}
