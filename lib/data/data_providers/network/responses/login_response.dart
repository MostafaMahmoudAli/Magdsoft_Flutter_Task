class LoginResponse
{
   String?status;
   String?message;
   String?code;
  LoginResponse.fromJson(Map<String,dynamic>json)
  {
    status=json["status"];
    message=json["message"];
    code=json["code"];
  }
}