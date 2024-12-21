
import 'package:adv_karim/featuers/login/logic/login_cubit.dart';
import 'package:adv_karim/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widgets/CustomFormTextField.dart';

class Formlogin extends StatelessWidget {
  const Formlogin({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit =  context.read<LoginCubit>();
    return Form(
      key: cubit.keyForm,
      child: Column(
        children: [
          // username
          CustomFormTextField(labelText: "username " ,
            hintText: "usrname ",
            controller: cubit.username ,
          ),
          SizedBox(height: 20.h,),
          // password
          CustomFormTextField(labelText: "password " ,
            hintText: "password ",
            controller: cubit.pass ,
          ),
        ],
      ),

    );
  }
}
