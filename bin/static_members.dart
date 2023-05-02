import 'package:hello_dart/math.dart';

void main(List<String> args) {
  print(math.max(1, 2));
}

class Math {
  static num max(num a, num b) {
    return (a > b) ? a : b;
  }

  static num mix(num a, num b) {
    return (a < b) ? a : b;
  }
}

// class Colors {
//   static const int red = 0xFFD13F13;
// }

// class MySingleton {
//   MySingleton._();
//   static final MySingleton _instance = MySingleton._();
//   factory MySingleton() => _instance;
// }

// class TextStyle {
//   static const _defaultFontSize = 17.0;
//   TextStyle({this.fontSize = _defaultFontSize});
//   final double fontSize;
// }

// class SomeClass {
//   static int myProperty = 0;
//   static void myMethod() {
//     print('Hello, Dart!');
//   }
// }
