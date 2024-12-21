import 'package:adv_karim/core/Network/dio_network/DoiService.dart';
import 'package:adv_karim/core/Network/dio_network/diofactory.dart';
import 'package:adv_karim/core/di/di.dart';
import 'package:adv_karim/featuers/login/data/repostiry/loginrepoImpl.dart';
import 'package:adv_karim/featuers/login/logic/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'myApp.dart';

void main() {
  setUp();
  runApp(MultiBlocProvider(providers: [
    BlocProvider(
      create: (context) => getIt<LoginCubit>(),
    ),
  ], child: MyApp()));
}
