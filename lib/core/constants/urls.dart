class Apis {
  static String baseUrl = 'https://fuddapi.galileosoft.com';
  static String signIn = '$baseUrl/api/user/login';
  static String signUp = '$baseUrl/api/user/secureregister';
  static String forgotPassword = '$baseUrl/api/user/resetpassword';
  static String updatePassword = '$baseUrl/api/user/changepassword';
  static String restaurantDetails = '$baseUrl/api/Restaurant/details/1/0';
  static String getcityrestolist = '$baseUrl/api/restaurant/getcityrestolist';
  static String getexclusiverestrolist =
      '$baseUrl/api/restaurant/getexclusiverestrolist';
  static String getperkrestrolist = '$baseUrl/api/restaurant/getperkrestrolist';
  static String getcurryearrestrolist =
      '$baseUrl/api/restaurant/getcurryearrestrolist';
  static String getnewopeningrestrolist =
      '$baseUrl/api/restaurant/getnewopeningrestrolist';
  static String getAlltagsrestrolist =
      '$baseUrl/api/restaurant/getAlltagsrestrolist';
  static String getAds = '$baseUrl/api/Restaurant/getrestroads';
}
