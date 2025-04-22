import 'dart:ffi';
import 'dart:io';

import 'nativefl.dart';

class NativeHelper {
  factory NativeHelper() => _getInstance();
  static NativeHelper get instance => _getInstance();
  static NativeHelper? _instance;
  static final DynamicLibrary _dylib = Platform.isAndroid
      ? DynamicLibrary.open('libnativeffi.so')
      : DynamicLibrary.process();
  Nativefl? _nf;
  NativeHelper._internal() {
    _nf = Nativefl(_dylib);
  }
  static NativeHelper _getInstance() {
    _instance ??= NativeHelper._internal();
    return _instance!;
  }

  int? testPlus(int a, int b) {
    var value = _nf?.TestPlus(a, b);
    return value;
  }
}
