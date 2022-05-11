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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
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
              SelectableJapaneseText("＿＿＿＿＿は＿＿＿＿＿に{住|す}んでいます"),
              SelectableJapaneseText("どこに{住|す}んでいます"),
              Text("Explanation: _____ lives in _____"),
              Space(),
              SelectableJapaneseText("＿＿＿＿＿の＿＿＿＿＿"),
              Text("Explanation: の represents possession"),
              SelectableJapaneseText("＿＿＿＿＿が{好|す}きです"),
              SelectableJapaneseText("＿＿＿＿＿は{好|す}きじゃないです"),
              SelectableJapaneseText("{何|なに}が{好|す}きじゃないです"),
              Text("Explanation: I like _____"),
              Space(),
              SelectableJapaneseText("＿＿＿＿＿を＿＿＿＿＿ます"),
              SelectableJapaneseText("＿＿＿＿＿は＿＿＿＿＿ません"),
              SelectableJapaneseText("＿＿＿＿＿を＿＿＿＿＿ますか"),
              SelectableJapaneseText("{何|なに}を＿＿＿＿＿ますか"),
              Text("Explanation: I _____ _____"),
              Space(),
              SelectableJapaneseText("いつも＿＿＿＿＿ます"),
              SelectableJapaneseText("よく＿＿＿＿＿ます"),
              SelectableJapaneseText("あまり＿＿＿＿＿ません"),
              SelectableJapaneseText("ぜんぜん＿＿＿＿＿ません"),
              Text("Explanation: I often _____"),
              Text("Explanation: I seldom _____"),
              Space(),
              SelectableJapaneseText("{好|す}きな＿＿＿＿＿は＿＿＿＿＿です"),
              SelectableJapaneseText("{嫌|きら}いな＿＿＿＿＿は＿＿＿＿＿です"),
              SelectableJapaneseText("れい：{嫌|きら}いな{果物|くだもの}はバナナです"),
              Text("Explanation: The _____ I like/hate is ______"),
              Space(),
              SelectableJapaneseText("＿＿＿＿＿で{食|た}べます"),
              SelectableJapaneseText("どこで{食|た}べます"),
              SelectableJapaneseText("＿＿＿＿＿を{食|た}べます"),
              SelectableJapaneseText("何なにを{食|た}べます"),
              Text("Explanation: I eat at _____"),
              Text("Explanation: I eat _____"),
              Space(),
              SelectableJapaneseText("＿＿＿＿\\い\\です"),
              SelectableJapaneseText("＿＿＿＿\\く\\ないです"),
              SelectableJapaneseText("れい：{高|たか}いです"),
              SelectableJapaneseText("れい：{高|たか}くないです"),
              Text("Explanation: It is い-Adj"),
              Space(),
              SelectableJapaneseText("＿＿＿＿＿に{住|す}んでいます"),
              SelectableJapaneseText("＿＿＿＿＿と{住|す}んでいます"),
              SelectableJapaneseText("{誰|だれ}と{住|す}んでいます"),
              SelectableJapaneseText("{一人|ひとり}で{住|す}んでいます"),
              Text("Explanation: I live with _____"),
              Text("Explanation: I live by myself"),
              Space(),
              SelectableJapaneseText("＿＿＿＿＿があります"),
              SelectableJapaneseText("＿＿＿＿＿はありません"),
              SelectableJapaneseText("＿＿＿＿＿に（は）{何|なに}がありますか"),
              SelectableJapaneseText("＿＿＿＿＿が＿＿＿＿＿あります"),
              SelectableJapaneseText("＿＿＿＿＿がいくつありますか"),
              Text("Explanation: I have _____"),
              Text("Explanation: What is in ______"),
              Text("Explanation: I have _____ _____"),
              Text("Explanation: How many _____ do you have?"),
            ],
          ),
        ),
      ),
    );
  }
}
