import '../model/users_model.dart';

abstract class CubitUsersStates{}

class CubitUserLoading extends CubitUsersStates{}

class CubitUsersError extends CubitUsersStates {
  final String errorMessage;
  CubitUsersError({required this.errorMessage});
}


class CubitUserLoaded extends CubitUsersStates{
  List<UsersModel> users;
  CubitUserLoaded({required this.users,});
}