class OtpRequest
{
   String?code;
   String?phone;
  OtpRequest({required this.code,required this.phone});

   Map<String,dynamic>toMap()=>
       {
         "name":code,
         "phone":phone,
       };
}