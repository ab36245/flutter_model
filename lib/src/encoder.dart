import 'ref.dart';

abstract class ModelArrayEncoder {
  int get length;

  ModelArrayEncoder putArray(int length);
  void putBool(bool value);
  void putFloat(double value);
  void putInt(int value);
  ModelMapEncoder putMap(int length);
  ModelObjectEncoder putObject();
  void putRef(ModelRef value);
  void putString(String value);
  void putTime(DateTime value);
}

abstract class ModelMapEncoder {
  int get length;

  ModelArrayEncoder putArray(int length);
  void putBool(bool value);
  void putFloat(double value);
  void putInt(int value);
  ModelMapEncoder putMap(int length);
  ModelObjectEncoder putObject();
  void putRef(ModelRef value);
  void putString(String value);
  void putTime(DateTime value);
}

abstract class ModelObjectEncoder {
  ModelArrayEncoder putArray(String name, int length);
  void putBool(String name, bool value);
  void putFloat(String name, double value);
  void putInt(String name, int value);
  ModelMapEncoder putMap(String name, int length);
  ModelObjectEncoder putObject(String name);
  void putRef(String name, ModelRef value);
  void putString(String name, String value);
  void putTime(String name, DateTime value);
}
