import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management_practice/controller/getx_controller/sign_in.dart';
import 'package:state_management_practice/view/common_widget/common_button.dart';
import 'package:state_management_practice/view/common_widget/common_loading_button.dart';
import 'package:state_management_practice/view/screen/auth/sign_in/widget/email_text_field.dart';
import 'package:state_management_practice/view/screen/auth/sign_in/widget/password_text_field.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    SignInController signInController = Get.put(SignInController());
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: signInController.formKey,
              child: Column(
                children: [
                  buildSizedBox(height: 250),
                  EmailTextField(
                    emailController: signInController.emailController,
                  ),
                  buildSizedBox(height: 10),
                  PasswordTextField(
                    passwordController: signInController.passWordController,
                  ),
                  buildSizedBox(height: 10),
                Obx(() => signInController.isLoading.isFalse ? CommonButton(
                    buttonName: "Sign In",
                    onTap: () {
                      if (!signInController.formKey.currentState!.validate()) {
                        log("...........111......");
                        return ;
                      } else {
                        log("..........22222222.....");
                        signInController.signInFun();
                      }
                    }):const CommonLoadingButton()),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  SizedBox buildSizedBox({double? height, double? width}) =>
      SizedBox(height: height, width: width);
}
