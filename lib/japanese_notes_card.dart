import 'package:flutter/material.dart';
import 'package:japanese/selectable_japanese_text.dart';

class JapaneseNotesCard extends StatelessWidget {
  const JapaneseNotesCard(this.notes,
      {Key? key, this.kanjiStyle, this.textStyle, this.highlightStyle})
      : super(key: key);

  final List<String> notes;
  final TextStyle? kanjiStyle;
  final TextStyle? textStyle;
  final TextStyle? highlightStyle;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: notes
              .map(
                (e) => SelectableJapaneseText(
                  e,
                  kanjiStyle: kanjiStyle,
                  textStyle: textStyle,
                  highlightStyle: highlightStyle,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
