import 'package:cubit_practice/screens/cubit/cubit_users_states.dart';
import 'package:cubit_practice/screens/model/users_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../repositories/users_repo.dart';

class UsersCubit extends Cubit<CubitUsersStates>{
  final UsersRepo userRepo = UsersRepo();
  UsersCubit(): super (CubitUserLoading()){
    getData();
  }

  Future<void> getData() async {
    try{
      List<UsersModel> users = await userRepo.getUsers();
      emit(CubitUserLoaded( users: users));
    }catch (e) {
      emit(CubitUsersError(errorMessage: e.toString()));
    }
  }
}