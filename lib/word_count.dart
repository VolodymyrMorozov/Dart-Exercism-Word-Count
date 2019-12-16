class WordCount {
  Map<String, int> countWords(String phrase) {
    final List words = phrase
        .toLowerCase()
        .split(RegExp('[^A-Za-z]+\'|\'[^A-Za-z]+|[^A-Za-z0-9\']+'))
        .where((String el) => el.isNotEmpty)
        .toList();
    return Map.fromIterable(words.toSet(),
        key: (dynamic k) => k.toString(),
        value: (dynamic v) => words.where((dynamic word) => v == word).length);
  }
}
