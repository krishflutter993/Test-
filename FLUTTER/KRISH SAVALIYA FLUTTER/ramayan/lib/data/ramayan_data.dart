import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:ramayan/models/kand.dart';

Future<List<Kand>> loadRamayan() async {
  final String jsonString = await rootBundle.loadString('assets/ramayan.json');
  final List<dynamic> jsonData = json.decode(jsonString);

  return jsonData.map((k) {
    return Kand(
      name: k['name'],
      chapters: (k['chapters'] as List).map((c) {
        return Chapter(title: c['title'], content: c['content']);
      }).toList(),
      image: k['image'],
    );
  }).toList();
}
