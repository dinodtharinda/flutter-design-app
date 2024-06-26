// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

import 'package:flutter_design_app/utils/custom/app_custom_widgets.dart';
import 'package:flutter_design_app/utils/permissions/permissions.dart';
import 'package:flutter_design_app/views/screens/dashboard/dashboard_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomField(
              icon: Icons.email,
              controller: emailController,
              hint: "Email, username or phone",
            ),
            CustomPasswordField(
              icon: Icons.password,
              controller: passwordController,
              hint: "Password",
            ),
            CustomButton(
              title: "SIGN IN",
              // isLoading: authController.isLoading,
              onTap: () async {
                // print(await Permissions.camaraPermissionRequest());
                // print(await Permissions.locationPermissionRequest());
                // print(await Permissions.allPermissionRequest());

                // _login(authController, emailController,
                //     passwordController, context);
                Navigator.push(context, MaterialPageRoute(builder: (c){
                  return  const DashboardScreen();
                }));
              },
            ),
          ],
        ),
      ),
    ));
  }

  // void _login(AuthController authController, TextEditingController emailCtlr,
  //     TextEditingController passCtlr, BuildContext context) async {
  //   String _email = emailCtlr.text.trim();
  //   String _password = passCtlr.text.trim();

  //   bool _isValid = emailCtlr.text.contains("@");

  //   if (_email.isEmpty) {
  //     print('enter_email');
  //   } else if (!_isValid) {
  //     print('invalid_email');
  //   } else if (_password.isEmpty) {
  //     print('enter_password');
  //   } else if (_password.length < 6) {
  //     print('password_should_be');
  //   } else {
  //     // print(_email);
  //     // authController.login(_email, _password).then((status) async {
  //     //   if (status.isSuccess) {
  //     //     print(status.message);
  //     //   } else {
  //     //     print(status.message);
  //     //   }
  //     // });
  //   }
  // }
}
