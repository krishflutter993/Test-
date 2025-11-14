class Chapter {
  final String title;
  final String content;

  Chapter({required this.title, required this.content});

  factory Chapter.fromJson(Map<String, dynamic> json) {
    return Chapter(title: json['title'], content: json['content']);
  }
}

class Kand {
  final String name;
  final List<Chapter> chapters;
  final String image; // <-- add this

  Kand({required this.name, required this.chapters, required this.image});

  factory Kand.fromJson(Map<String, dynamic> json) {
    return Kand(
      name: json['name'],
      chapters: (json['chapters'] as List)
          .map((c) => Chapter.fromJson(c))
          .toList(),
      image: json['image'], // <-- get image path from JSON
    );
  }
}
