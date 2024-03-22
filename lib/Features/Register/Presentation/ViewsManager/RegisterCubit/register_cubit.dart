import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:planets_explorer/Features/Register/Data/ApiService/Models/create_user_model.dart';
import 'package:planets_explorer/Features/Register/Data/register_data.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit({required this.registerData}) : super(RegisterInitial());

  final RegisterData registerData;

  Future<void> createUser({required CreateUserModel createUserModel})
  async{
    emit(RegisterLoading());
    var result = await registerData.createUser(createUserModel);

    result.fold(
          (failure) {
            emit(RegisterFailure(msg: failure.message));
            },
          (success) {
            emit(RegisterSuccess(msg: success.message??"Done Successfully"));
            },
    );
  }


}
