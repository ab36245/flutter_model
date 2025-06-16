import 'ref.dart';

abstract class ModelArrayEncoder {
  int get length;

  ModelArrayEncoder putArray(int length);
  void putDate(DateTime value);
  void putInt(int value);
  ModelMapEncoder putMap(int length);
  ModelObjectEncoder putObject();
  void putRef(ModelRef value);
  void putString(String value);
}

abstract class ModelMapEncoder {
  int get length;

  ModelArrayEncoder putArray(int length);
  void putDate(DateTime value);
  void putInt(int value);
  ModelMapEncoder putMap(int length);
  ModelObjectEncoder putObject();
  void putRef(ModelRef value);
  void putString(String value);
}

abstract class ModelObjectEncoder {
  ModelArrayEncoder putArray(String name, int length);
  void putDate(String name, DateTime value);
  void putInt(String name, int value);
  ModelMapEncoder putMap(String name, int length);
  ModelObjectEncoder putObject(String name);
  void putRef(String name, ModelRef value);
  void putString(String name, String value);
}
