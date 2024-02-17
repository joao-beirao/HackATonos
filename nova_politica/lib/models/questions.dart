class Question {
  final int id;
  final String question;
  final bool hasResponse;
  final String response;

  const Question({
    required this.id,
    required this.question,
    required this.hasResponse,
    required this.response,

  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'question': question,
      'hasResponse': hasResponse,
      'response': response,

    };
  }

  @override
  String toString() {
    return 'Dog{id: $id, question: $question, hasResponse: $hasResponse, response: $response}';
  }

}