
class HelpResponse {
  int? status;
  String? message;
  List<Help>? help;

  HelpResponse({
    this.status,
    this.message,
    this.help,
  });

  factory HelpResponse.fromJson(Map<String, dynamic> json) => HelpResponse(
    status: json["status"],
    message: json["message"],
    help: json["help"] == null ? [] : List<Help>.from(json["help"]!.map((x) => Help.fromJson(x))),
  );

}

class Help {
  int? id;
  String? question;
  String? answer;

  Help({
    this.id,
    this.question,
    this.answer,
  });

  factory Help.fromJson(Map<String, dynamic> json) => Help(
    id: json["id"],
    question: json["question"],
    answer: json["answer"],
  );

}
