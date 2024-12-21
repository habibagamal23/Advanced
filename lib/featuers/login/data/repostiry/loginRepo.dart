import 'package:adv_karim/core/Network/apiResult.dart';
import 'package:adv_karim/featuers/login/data/Model/LoginResponseModel.dart';

import '../Model/LoginRequstBodyModel.dart';

abstract class LoginRepo{
   Future<ApiResult<LoginResponseModel>>  loginUser({required LoginRequestBodyModel loginBody});
}





