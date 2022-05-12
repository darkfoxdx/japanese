import 'package:better_selection/better_selection.dart';
import 'package:flutter/material.dart';
import 'package:japanese/japanese_notes_card.dart';

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
    return SelectableScope(
      child: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Japanese")),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  JapaneseNotesCard(
                    [
                      "＿＿＿＿＿は＿＿＿＿＿です",
                      "＿＿＿＿＿は＿＿＿＿＿じゃないです",
                      "＿＿＿＿＿は＿＿＿＿＿ですか",
                      "＿＿＿＿＿は{何|なん}ですか",
                      "れい：{私|わたし}は{学生|がくせい}です",
                      "Explanation: ______ is ______",
                    ],
                  ),
                  JapaneseNotesCard(
                    [
                      "{私|わたし}も＿＿＿＿＿です",
                      "{私|わたし}は＿＿＿＿＿もできます",
                      "れい：{私|わたし}は{日本語|にほんご}もできます",
                      "Explanation: も represents ALSO",
                    ],
                  ),
                  JapaneseNotesCard(
                    [
                      "＿＿＿＿＿と＿＿＿＿＿",
                      "Explanation: と represents AND",
                    ],
                  ),
                  JapaneseNotesCard(
                    [
                      "＿＿＿＿＿は＿＿＿＿＿に{住|す}んでいます",
                      "どこに{住|す}んでいます",
                      "Explanation: _____ lives in _____",
                    ],
                  ),
                  JapaneseNotesCard(
                    [
                      "＿＿＿＿＿の＿＿＿＿＿",
                      "Explanation: の represents possession",
                    ],
                  ),
                  JapaneseNotesCard(
                    [
                      "＿＿＿＿＿が{好|す}きです",
                      "＿＿＿＿＿は{好|す}きじゃないです",
                      "{何|なに}が{好|す}きじゃないです",
                      "Explanation: I like _____",
                    ],
                  ),
                  JapaneseNotesCard(
                    [
                      "＿＿＿＿＿を＿＿＿＿＿ます",
                      "＿＿＿＿＿は＿＿＿＿＿ません",
                      "＿＿＿＿＿を＿＿＿＿＿ますか",
                      "{何|なに}を＿＿＿＿＿ますか",
                      "Explanation: I _____ _____",
                    ],
                  ),
                  JapaneseNotesCard(
                    [
                      "いつも＿＿＿＿＿ます",
                      "よく＿＿＿＿＿ます",
                      "あまり＿＿＿＿＿ません",
                      "ぜんぜん＿＿＿＿＿ません",
                      "Explanation: I often _____",
                      "Explanation: I seldom _____",
                    ],
                  ),
                  JapaneseNotesCard(
                    [
                      "{好|す}きな＿＿＿＿＿は＿＿＿＿＿です",
                      "{嫌|きら}いな＿＿＿＿＿は＿＿＿＿＿です",
                      "れい：{嫌|きら}いな{果物|くだもの}はバナナです",
                      "Explanation: The _____ I like/hate is ______",
                    ],
                  ),
                  JapaneseNotesCard(
                    [
                      "＿＿＿＿＿で{食|た}べます",
                      "どこで{食|た}べます",
                      "＿＿＿＿＿を{食|た}べます",
                      "何なにを{食|た}べます",
                      "Explanation: I eat at _____",
                      "Explanation: I eat _____",
                    ],
                  ),
                  JapaneseNotesCard(
                    [
                      "＿＿＿＿\\い\\です",
                      "＿＿＿＿\\く\\ないです",
                      "れい：{高|たか}いです",
                      "れい：{高|たか}くないです",
                      "Explanation: It is い-Adj",
                    ],
                  ),
                  JapaneseNotesCard(
                    [
                      "＿＿＿＿＿に{住|す}んでいます",
                      "＿＿＿＿＿と{住|す}んでいます",
                      "{誰|だれ}と{住|す}んでいます",
                      "{一人|ひとり}で{住|す}んでいます",
                      "Explanation: I live with _____",
                      "Explanation: I live by myself",
                    ],
                  ),
                  JapaneseNotesCard(
                    [
                      "＿＿＿＿＿があります",
                      "＿＿＿＿＿はありません",
                      "＿＿＿＿＿に（は）{何|なに}がありますか",
                      "＿＿＿＿＿が＿＿＿＿＿あります",
                      "＿＿＿＿＿がいくつありますか",
                      "Explanation: I have _____",
                      "Explanation: What is in ______",
                      "Explanation: I have _____ _____",
                      "Explanation: How many _____ do you have?",
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
