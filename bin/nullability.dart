void main(List<String> args) {
  bool flowerIsBeautiful = isBeautiful('flower')!;
}

bool? isBeautiful(String? item) {
  if (item == 'flower') {
    return true;
  } else if (item == "garbadge") {
    return false;
  }

  return null;
}
