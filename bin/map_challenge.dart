import 'dart:convert';

void main(List<String> args) {
  final widget = Widget(125.0, 125.0);
  final widgetMap = widget.toJson();

  final myJsonString = jsonEncode(widgetMap);

  print(myJsonString);
}

class Widget {
  Widget(this.width, this.height);
  final double width;
  final double height;

  Map<String, double> toJson() {
    return <String, double>{
      'width': width,
      'height': height,
    };
  }
}

Map<String, int> countCharacters(String text) {
  Map<String, int> charCount = {};

  for (int i = 0; i < text.length; i++) {
    String char = text[i];
    if (!charCount.containsKey(char)) {
      charCount[char] = 1;
    } else {
      charCount[char] = (charCount[char] ?? 0) + 1;
    }
  }

  return charCount;
}
