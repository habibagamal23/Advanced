import 'package:adv_karim/core/Network/apiConsumer.dart';
import 'package:adv_karim/core/Network/apiResult.dart';
import 'package:adv_karim/core/Network/dio_network/DoiService.dart';
import 'package:adv_karim/featuers/login/data/Model/LoginRequstBodyModel.dart';
import 'package:adv_karim/featuers/login/data/Model/LoginResponseModel.dart';
import 'package:adv_karim/featuers/login/data/repostiry/loginRepo.dart';

import '../../../../core/Network/apiConstant.dart';

class LoginRepoImple implements LoginRepo {

  ApiConsumer apiConsumer;

  LoginRepoImple(this.apiConsumer);


  @override
  Future<ApiResult<LoginResponseModel>> loginUser(
      {required LoginRequestBodyModel loginBody}) async {
    try {
      final data = await apiConsumer.post(
          ApiConstants.loginEndPoint, loginBody.toJson());

      return ApiResult.Success(LoginResponseModel.fromJson(data));
    } catch (e) {
      return ApiResult.Error("failed to login $e");
    }
  }
}
  
