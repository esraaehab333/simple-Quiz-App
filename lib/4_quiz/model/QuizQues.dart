class QuizQues {
  QuizQues(this.text,this.ans);
  final String text;
  final List<String> ans ;

  List<String> getshuffledAnswers(){
   final shuffuledList = List.of(ans);
   shuffuledList.shuffle();
   return shuffuledList;
  }
}