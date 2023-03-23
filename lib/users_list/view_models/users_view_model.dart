import 'package:flutter/material.dart';
import 'package:mvm/users_list/repo/users_services.dart';
import 'package:mvvm/users_list/models/user_error.dart';
import 'package:mvm/users_list/models/users_list_model.dart';

class UserViewModel extends ChangeNotifier{
  bool _loading = false;
  List<UsersModel> _userListModel = [];
  UserError _userError;

  bool get loading => _loading;
  List<UsersModel> get userListModel => _userListModel;

  setLoading(bool loading) async {
    _loading = loading;
    notifyListeners();
  }
  setUserListModel(List<UsersModel> userListModel){
    _userListModel = userListModel;
  }
  // setUserError(UserError userError){
  //   _userError = userError;
  // }
  getUsers() async{
    setLoading(true);
    var response = await UserServices.getUsers();
  }


}