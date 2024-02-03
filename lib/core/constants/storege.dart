import 'package:shared_preferences/shared_preferences.dart';

Future<void> saveString(String key, String value) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString(key, value);
}

Future<void> saveBool(String key, bool value) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setBool(key, value);
}

Future<void> saveList(String key, List<String> value) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setStringList(key, value);
}

Future<void> saveint(String key, int value) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setInt(key, value);
}

Future<String?> getStringValue(String key) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  //Return String
  String? stringValue = prefs.getString(key);
  return stringValue;
}

Future<bool?> getboolValue(String key) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  //Return String
  bool? value = prefs.getBool(key);
  return value;
}

Future<List> getListValue(String key) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  //Return String
  List? value = prefs.getStringList(key);
  return value ?? [];
}

Future<int?> getIntValue(String key) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  //Return String
  int? intValue = prefs.getInt(key);
  return intValue;
}

deleteList(String key) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.remove(key);
}

clearStorage() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.clear();
}
