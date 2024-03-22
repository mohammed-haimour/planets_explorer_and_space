import 'package:planets_explorer/Features/Register/Data/ApiService/Models/create_user_model.dart';
import 'package:planets_explorer/Features/Register/Data/ApiService/Models/create_user_result_model.dart';
import 'package:planets_explorer/Features/Register/Data/ApiService/register_api_service.dart';
import 'package:planets_explorer/Features/Register/Data/DataSources/register_local_data_source.dart';

class RegisterRemoteDataSource{
  final RegisterApiService registerApiService;

  RegisterRemoteDataSource({required this.registerApiService});

  Future<CreateUserResultModel> createUser({required CreateUserModel createUserModel})
  async{
    var response = await registerApiService.postToCreateUser(createUserModel: createUserModel);

    CreateUserResultModel user = CreateUserResultModel.fromJson(response);

    RegisterLocalDataSource.saveUserToLocal(user);

    return user;

  }

}