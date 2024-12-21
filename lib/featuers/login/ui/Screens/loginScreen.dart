
import 'package:adv_karim/featuers/login/ui/Screens/widhets/ButtonConsumer.dart';
import 'package:adv_karim/featuers/login/ui/Screens/widhets/formLogin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50.h,),
          Text("welcom back "),
          // form
          SizedBox(height: 30.h,),
          Formlogin(),
          // button login
SizedBox(height: 30.h,),
          Buttonconsumer()
        ],
      ),
    );
  }
}