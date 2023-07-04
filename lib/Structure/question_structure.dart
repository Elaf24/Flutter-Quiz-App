class QuestionStructure {
 const QuestionStructure(this.question, this.answers);

  final String question;
  final List<String> answers;

  List<String>getShuffledAnswer(){
   final shuffledList=List.of(answers); //copy korse answer ta
   shuffledList.shuffle();// ota re shuffle korsi
   return shuffledList;
  }
}
