import 'package:flutter/material.dart';
import 'package:ramayan/models/kand.dart';

class ChapterScreen extends StatelessWidget {
  final Chapter chapter;

  const ChapterScreen({required this.chapter, super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> lines = chapter.content.split('\n\n');

    return Scaffold(
      backgroundColor: const Color(0xFFF8ECFF), // हल्का lavender background
      appBar: AppBar(
        title: Text(
          chapter.title,
          style: const TextStyle(
            fontFamily: 'NotoSerifDevanagari',
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xFFEBD4FF),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView.builder(
          itemCount: lines.length,
          itemBuilder: (context, index) {
            final parts = lines[index].split("::"); // Sanskrit::Gujarati
            final sanskrit = parts[0].trim();
            final gujarati = parts.length > 1 ? parts[1].trim() : "";

            return Card(
              elevation: 3,
              color: const Color(0xFFFFF8E7), // हल्का पीला background
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 6),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 18,
                  horizontal: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // संस्कृत श्लोक
                    Text(
                      sanskrit,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 20,
                        height: 1.7,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                        fontFamily: 'NotoSerifDevanagari',
                      ),
                    ),
                    const SizedBox(height: 10),

                    // गुजराती अर्थ
                    if (gujarati.isNotEmpty)
                      Text(
                        gujarati,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 17,
                          height: 1.6,
                          color: Color(0xFF5E4632),
                          fontFamily: 'NotoSerifGujarati',
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
