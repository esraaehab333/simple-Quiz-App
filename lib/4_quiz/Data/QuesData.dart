import '../model/QuizQues.dart';

class QuizQues {
  QuizQues(this.text, this.ans);
  final String text;
  final List<String> ans;

  List<String> getshuffledAnswers() {
    final shuffuledList = List.of(ans);
    shuffuledList.shuffle();
    return shuffuledList;
  }
}

List<QuizQues> questions = [
  QuizQues("What is Flutter?", [
    "Flutter is an open-source UI toolkit.",
    "Flutter is an open-source backend development framework.",
    "Flutter is an open-source programming language for cross-platform applications",
    "Flutters is a DBMS toolkit."
  ]),
  QuizQues(
      "Who developed the Flutter Framework and continues to maintain it today?",
      ["Google.", "Facebook.", "Microsoft.", "Oracle."]),
  QuizQues("Which programming language is used to build Flutter applications?",
      ["Dart.", "Kotlin.", "Java.", "Go."]),
  QuizQues(
      "How many types of widgets are there in Flutter?", ["2", "4", "6", "8+"]),
  QuizQues(
      "When building for iOS, Flutter is restricted to an __ compilation strategy",
      [
        " AOT (ahead-of-time)",
        "JIT (Just-in-time)",
        " Transcompilation",
        "Recompilation"
      ]),
  QuizQues("A sequence of asynchronous Flutter events is known as a:",
      ["Stream", "Flow", "Current", "Series"]),
  QuizQues(
      "Access to a cloud database through Flutter is available through which service?",
      ["Firebase Database", " SQLite", "NOSQL", "MYSQL"]),
  QuizQues(
      "Access to a cloud database through Flutter is available through which service?",
      ["Firebase Database", " SQLite", "NOSQL", "MYSQL"]),
  QuizQues(
      "What are some key advantages of Flutter over alternate frameworks?",
      [" All of the above", "Rapid cross-platform application development and debugging tools", "Future-proofed technologies and UI resources", "Strong supporting tools for application development and launch"]),
  QuizQues("What element is used as an identifier for components when programming in Flutter?",
      ["Keys", "Widgets.", "Elements", "Serial"]),
];
// عامل ليست من كلاس احنا لسه عملينه عادي دي
