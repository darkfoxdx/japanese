import 'package:flutter/material.dart';
import 'package:japanese/selectable_japanese_text.dart';
import 'package:japanese/space.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
            bodyText1: TextStyle(fontSize: 18.0),
            bodyText2: TextStyle(fontSize: 16.0),
            button: TextStyle(fontSize: 16.0),
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Japanese")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            SelectableJapaneseText("＿＿＿＿＿は＿＿＿＿＿です"),
            SelectableJapaneseText("＿＿＿＿＿は＿＿＿＿＿じゃないです"),
            SelectableJapaneseText("＿＿＿＿＿は＿＿＿＿＿ですか"),
            SelectableJapaneseText("＿＿＿＿＿は{何|なん}ですか"),
            SelectableJapaneseText("れい：{私|わたし}は{学生|がくせい}です"),
            Text("Explanation: ______ is ______"),
            Space(),
            SelectableJapaneseText("{私|わたし}も＿＿＿＿＿です"),
            SelectableJapaneseText("{私|わたし}は＿＿＿＿＿もできます"),
            SelectableJapaneseText("れい：{私|わたし}は{日本語|にほんご}もできます"),
            Text("Explanation: も represents ALSO"),
            Space(),
            SelectableJapaneseText("＿＿＿＿＿と＿＿＿＿＿"),
            Text("Explanation: と represents AND"),
            Space(),
            SelectableJapaneseText("＿_＿＿＿は＿＿＿＿＿に{住|す}んでいます"),
            SelectableJapaneseText("どこに{住|す}んでいます"),
            Text("Explanation: _____ lives in _____"),
          ],
        ),
      ),
    );
  }
}
