import 'decoder.dart';
import 'encoder.dart';

class ModelCodec<T> {
  final T Function(ModelObjectDecoder decoder) decode;
  final void Function(ModelObjectEncoder encoder, T r) encode;

  const ModelCodec({
    required this.decode,
    required this.encode,
  });
}

