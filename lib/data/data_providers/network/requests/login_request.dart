class LoginRequest
{
   String?name;
   String?phone;
  LoginRequest({
    required this.name,
    required this.phone,
  });
  Map<String,dynamic>toMap()=>
      {
        "name":name,
        "phone":phone,
      };
}