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
    return Scaffold(
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
                    "Explanation: I have _____ (non-living things)",
                    "Explanation: What is in ______",
                    "Explanation: I have _____ _____",
                    "Explanation: How many _____ do you have?",
                  ],
                ),
                JapaneseNotesCard(
                  [
                    "＿＿＿＿＿がいます",
                    "＿＿＿＿＿はいません",
                    "＿＿＿＿＿に（は）{誰|だれ}がいますか",
                    "＿＿＿＿＿が＿＿＿＿＿います",
                    "＿＿＿＿＿が{何人|なんにん}いますか",
                    "Explanation: I have _____ (living things)",
                    "Explanation: Who is in ______",
                    "Explanation: I have _____ _____",
                    "Explanation: How many _____ (people) do you have?",
                  ],
                ),
                JapaneseNotesCard(
                  [
                    "＿＿＿＿＿は＿＿＿＿\\い\\です",
                    "＿＿＿＿＿は＿＿＿＿\\く\\ないです",
                    "＿＿＿＿＿は＿＿＿＿\\い\\ですか",
                    "はい、＿＿＿＿\\い\\です",
                    "いいえ、＿＿＿＿\\く\\ないです",
                    "いいえ、＿＿＿＿\\い\\です",
                    "＿＿＿＿＿は＿＿＿＿＿と{住|す}んでいます",
                    "＿＿＿＿＿は{一人|ひとり}で{住|す}んでいます",
                  ],
                ),
                JapaneseNotesCard(
                  [
                    "＿＿＿＿＿は＿＿＿＿＿の＿＿＿＿＿です",
                    "＿＿＿＿＿はどこですか",
                  ],
                ),
                JapaneseNotesCard(
                  [
                    "{今|いま}{何時|なんじ}ですか",
                    "＿＿＿＿\\時\\です",
                  ],
                ),
                JapaneseNotesCard(
                  [
                    "＿＿＿＿\\時\\に＿＿＿＿＿ます",
                    "＿＿＿＿\\時\\ごろ＿＿＿＿＿ます",
                    "{何時|なんじ}に＿＿＿＿＿ますか",
                    "いつ＿＿＿＿＿ますか",
                  ],
                ),
                JapaneseNotesCard(
                  [
                    "＿＿＿＿＿から＿＿＿＿＿まで",
                  ],
                ),
                JapaneseNotesCard(
                  [
                    "＿＿＿＿{時間|じかん}＿＿＿＿＿ます",
                    "{何時間|なんじかん}＿＿＿＿＿ますか",
                  ],
                ),
                JapaneseNotesCard(
                  [
                    "いつ／{何時|なんじ}がいいですか",
                    "＿＿＿＿＿はどうですか",
                    "＿＿＿＿＿がいいです",
                    "＿＿＿＿＿はだめです",
                  ],
                ),
                JapaneseNotesCard(
                  [
                    "＿＿＿＿＿が{好|す}きです",
                    "＿＿＿＿＿は{好|す}きじゃないです",
                    "どんな＿＿＿＿＿が{好|す}きですか",
                  ],
                ),
                JapaneseNotesCard(
                  [
                    "＿＿＿＿＿ができます",
                    "＿＿＿＿＿はできません",
                  ],
                ),
                JapaneseNotesCard(
                  [
                    "＿＿＿＿＿で＿＿＿＿＿ます",
                    "Explanation: I _____ at _____",
                  ],
                ),
                JapaneseNotesCard(
                  [
                    "よく／ときどき＿＿＿＿＿ます",
                    "あまり／ぜんぜん＿＿＿＿＿ません",
                  ],
                ),
                JapaneseNotesCard(
                  [
                    "～{月|げつ}／～{日|にち}／～{曜日|ようび}／～{時|じ}に＿＿＿＿＿",
                    "{今日|きょう}／{来週|らいしゅう}／{来月|らいげつ}／{来年|らいねん}＿＿＿＿＿",
                  ],
                ),
                JapaneseNotesCard(
                  [
                    "（{時|とき}）に／ⅹ＿＿＿＿＿があります",
                    "（{場所|ばしょ}）で＿＿＿＿＿があります",
                    "{何|な}にがありますか",
                  ],
                ),
                JapaneseNotesCard(
                  ["（{動詞|どうし}-ます-）に{行|い}きます"],
                ),
                JapaneseNotesCard(
                  [
                    "{一緒|いっしょ}に({動詞|どうし})ませんか",
                    "{動詞|どうし}ましょう",
                    "Explanation: Should we _____ together?",
                    "Explanation: Let's _____",
                  ],
                ),
                JapaneseNotesCard(
                  [
                    "（{場所|ばしょ}）から{行|い}きます",
                    "（{場所|ばしょ}）まで{行|い}きます",
                    "（{手段|しゅだん}）で／あるいて{行|い}きます",
                    "どうやって{行|い}きますか",
                  ],
                ),
                JapaneseNotesCard(
                  [],
                ),
                JapaneseNotesCard(
                  [],
                ),
                JapaneseNotesCard(
                  [],
                ),
                JapaneseNotesCard(
                  [],
                ),
                JapaneseNotesCard(
                  [],
                ),
                JapaneseNotesCard(
                  [],
                ),
                JapaneseNotesCard(
                  [],
                ),
                JapaneseNotesCard(
                  [],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
