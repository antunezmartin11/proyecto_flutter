import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:proyecto_flutter/src/models/response_api.dart';
import 'package:proyecto_flutter/src/models/user.dart';
import 'package:proyecto_flutter/src/provider/users_provider.dart';

class RegisterController{

  BuildContext context;
  TextEditingController emailController  = new TextEditingController();
  TextEditingController nameController  = new TextEditingController();
  TextEditingController lastNameController  = new TextEditingController();
  TextEditingController phoneController  = new TextEditingController();
  TextEditingController passwordController  = new TextEditingController();
  TextEditingController confirmPasswordController  = new TextEditingController();

  UsersProvider usersProvider = new UsersProvider();

  Future init(BuildContext context){
    this.context = context;
    usersProvider.init(context);
  }

  void register() async{
    String email = emailController.text.trim();
    String name = nameController.text;
    String lastname = lastNameController.text;
    String phone = phoneController.text.trim();
    String password = passwordController.text.trim();
    String confirmpassword = confirmPasswordController.text.trim();

    User user = new User(
      email: email,
      name: name,
      lastname: lastname,
      phone: phone,
      password: password
    );

    ResponseApi responseApi = await usersProvider.create(user);

    print('RESPUESTA: ${responseApi.toJson()}');
  }
}