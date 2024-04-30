class QuestionModel{

  late int id;
  late String question;
  late List<String> answers;
  late int correctIdx;

  QuestionModel({
    required this.id,
    required this.question,
    required this.answers,
    required this.correctIdx,
});


}