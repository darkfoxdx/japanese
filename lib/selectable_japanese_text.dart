import 'package:better_selection/better_selection.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SelectableJapaneseText extends StatelessWidget {
  const SelectableJapaneseText(this.text,
      {Key? key, this.kanjiStyle, this.textStyle, this.highlightStyle})
      : super(key: key);

  final String text;
  final TextStyle? kanjiStyle;
  final TextStyle? textStyle;
  final TextStyle? highlightStyle;

  @override
  Widget build(BuildContext context) {
    RegExp exp = RegExp(
        r"((\{).*?(?=\}))|\\.*?\\|\-.*?\-|(\}|\\|\-|^)?.*?(?=\{|$|\\|\-)");

    List<String> split = exp
        .allMatches(text)
        .map((e) => e.group(0)?.replaceAll(RegExp(r"({|})"), ""))
        .whereType<String>()
        .toList();

    List<TextSpan> textSpans = <TextSpan>[];

    for (var value in split) {
      if (value.contains("|")) {
        var pair = value.replaceAll("\\", "").split("|");
        textSpans.add(
          TextSpan(
              text: pair.first,
              style:
                  (kanjiStyle ?? const TextStyle(fontWeight: FontWeight.bold))
                      .merge(textStyle),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  var snackBar = SnackBar(
                    content: Text(pair.last),
                    behavior: SnackBarBehavior.floating,
                    action: SnackBarAction(
                      label: 'Copy',
                      onPressed: () {
                        Clipboard.setData(ClipboardData(text: pair.last));
                      },
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }),
        );
      } else if (value.contains("\\")) {
        textSpans.add(
          TextSpan(
            text: value.replaceAll("\\", ""),
            style: (const TextStyle(decoration: TextDecoration.underline))
                .merge(textStyle),
          ),
        );
      } else if (value.contains("-")) {
        textSpans.add(
          TextSpan(
            text: value.replaceAll("-", ""),
            style: (const TextStyle(decoration: TextDecoration.lineThrough))
                .merge(textStyle),
          ),
        );
      } else {
        textSpans.add(
          TextSpan(
            text: value,
            style: textStyle,
          ),
        );
      }
    }
    return SelectableText.rich(
      TextSpan(
        children: textSpans,
      ),
    );
  }
}
