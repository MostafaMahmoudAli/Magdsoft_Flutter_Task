
class OtpResponse {
  int? status;
  String? message;
  Account? account;

  OtpResponse({
    this.status,
    this.message,
    this.account,
  });

  factory OtpResponse.fromJson(Map<String, dynamic> json) => OtpResponse(
    status: json["status"],
    message: json["message"],
    account: json["account"] == null ? null : Account.fromJson(json["account"]),
  );

}

class Account {
  int? id;
  String? name;
  String? phone;

  Account({
    this.id,
    this.name,
    this.phone,
  });

  factory Account.fromJson(Map<String, dynamic> json) => Account(
    id: json["id"],
    name: json["name"],
    phone: json["phone"],
  );

}
