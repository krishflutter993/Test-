import 'package:flutter/material.dart';
import 'package:ramayan/models/kand.dart';

import 'package:ramayan/screens/chapter_screen.dart';
import 'package:ramayan/utils/backgroundimg.dart';

class KandDetailScreen extends StatelessWidget {
  final Kand kand;

  KandDetailScreen({required this.kand});

  get child => null;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        img(),
        Scaffold(
          appBar: AppBar(title: Text(kand.name)),
          body: ListView.builder(
            itemCount: kand.chapters.length,
            itemBuilder: (context, index) {
              final chapter = kand.chapters[index];
              return Card(
                child: ListTile(
                  title: Text(chapter.title),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ChapterScreen(chapter: chapter),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
