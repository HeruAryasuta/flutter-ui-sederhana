import 'package:flutter/material.dart';
import 'package:pre_test/view/widgets/button.daftar.dart';
import 'package:pre_test/view/widgets/button.login.dart';
import 'package:pre_test/view/widgets/form.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Medical',
                    style: TextStyle(
                      color: Colors.green[700],
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Container(
                  child: const SizedBox(
                    height: 50,
                  ),
                ),
                Text(
                  'Login Akun',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  ),
                ),

                const SizedBox(height: 20),
                // email input
                From(
                  controller: emailController,
                  text: 'Email',
                  obscure: false,
                  textInputType: TextInputType.emailAddress,
                ),

                const SizedBox(height: 25),

                /// password input
                From(
                  controller: passwordController,
                  text: 'Password',
                  textInputType: TextInputType.visiblePassword,
                  obscure: true,
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Butoon(),
                    Daftar(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
