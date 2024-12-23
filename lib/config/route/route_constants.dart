class Routes {
  static String splash = "/";
  static String home = "home";
  static String auth = "auth";
  static String addExpense = "addExpense";
  
  // ----------------------------------------------------
  
  static String getSplashRoute() => splash;
  static String getHomeRoute() => "/$home";  
  static String getAuthRoute() => "/$auth";
  static String getAddExpenseRoute() => "/$addExpense";
}
