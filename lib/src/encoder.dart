import 'ref.dart';

abstract class ModelArrayEncoder {
  void putArray(int length, Function(ModelArrayEncoder) handler);
  void putDate(DateTime value);
  void putInt(int value);
  void putMap(int length, Function(ModelMapEncoder) handler);
  void putObject(Function(ModelObjectEncoder) handler);
  void putRef(ModelRef value);
  void putString(String value);
}

abstract class ModelMapEncoder {
  void putArray(int length, Function(ModelArrayEncoder) handler);
  void putDate(DateTime value);
  void putInt(int value);
  void putKey(String value);
  void putMap(int length, Function(ModelMapEncoder) handler);
  void putObject(Function(ModelObjectEncoder) handler);
  void putRef(ModelRef value);
  void putString(String value);
}

abstract class ModelObjectEncoder {
  void putArray(String name, int length, Function(ModelArrayEncoder) handler);
  void putDate(String name, DateTime value);
  void putInt(String name, int value);
  void putMap(String name, int length, Function(ModelMapEncoder) handler);
  void putObject(String name, Function(ModelObjectEncoder) handler);
  void putRef(String name, ModelRef value);
  void putString(String name, String value);
}
