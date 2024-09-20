// ignore: depend_on_referenced_packages
import 'package:shared_preferences/shared_preferences.dart';

class Cachhelper {
  static late SharedPreferences sharedPreferences;
  static init()async
  {
    sharedPreferences =await SharedPreferences.getInstance();
  }

  static Future<bool>saveData({required String key, required dynamic value})async
  {
    if(value is String){return await sharedPreferences.setString(key, value);}
    else if(value is int){return await sharedPreferences.setInt(key, value);}
    else if(value is bool){return await sharedPreferences.setBool(key, value);}
    else if(value is double){return await sharedPreferences.setDouble(key, value);}
    return sharedPreferences.setStringList(key, value);
  }

  //ka example
  static String? getDataString({required String key}){
    return sharedPreferences.getString(key);
  }

  //el dynamic betraga3 kol haga
  static dynamic getAllData({required String key}){
    return sharedPreferences.get(key);
  }

  static Future<bool> removeData({required String key})async{
    return await sharedPreferences.remove(key);
  }

  static bool containKey({required String key}){
    return sharedPreferences.containsKey(key);
  }

  static clearData(){
    return sharedPreferences.clear();
  }

}
