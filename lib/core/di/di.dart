import 'package:adv_karim/core/Network/apiConsumer.dart';
import 'package:adv_karim/core/Network/dio_network/DoiService.dart';
import 'package:adv_karim/core/Network/dio_network/diofactory.dart';
import 'package:adv_karim/featuers/login/data/repostiry/loginRepo.dart';
import 'package:adv_karim/featuers/login/data/repostiry/loginrepoImpl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../featuers/login/logic/login_cubit.dart';

final getIt = GetIt.instance;

void setUp(){

  // dio object
  getIt.registerLazySingleton<Dio>(()=> DioFcatory().dio);

  getIt.registerLazySingleton<ApiConsumer>(()=> DioService(dio: getIt<Dio>()));

  getIt.registerFactory<LoginRepo>(()=>LoginRepoImple(getIt<ApiConsumer>()));

  getIt.registerFactory<LoginCubit>(()=> LoginCubit(getIt<LoginRepo>()));


}