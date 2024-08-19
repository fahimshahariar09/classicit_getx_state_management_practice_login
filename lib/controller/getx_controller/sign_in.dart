

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:state_management_practice/controller/api_controller/sign_in.dart';
import 'package:state_management_practice/view/screen/home/home_page.dart';

class SignInController extends GetxController{
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController =TextEditingController();
  TextEditingController passWordController =TextEditingController();
  RxBool isLoading = false.obs;


  signInFun()async{
    isLoading.value =true;
   bool status = await SignInService.signIn(email: emailController.text, password: passWordController.text,);
    isLoading.value =false;

    if(status){
      Get.to(()=>const HomePage());
      return ;
    }
  }

  @override
  void dispose() {
    emailController.dispose();
    passWordController.dispose();
    super.dispose();
  }
}
