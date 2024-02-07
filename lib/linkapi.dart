class AppLink {
  static const String server = "https://ecommercethesis.shop/ecommerce";

  static const String imageststatic =
      "https://ecommercethesis.shop/ecommerce/upload";
//========================== Image ============================
  static const String imagestCategories = "$imageststatic/categories";
  static const String imagestItems = "$imageststatic/items";
// =============================================================

  static const String test = "$server/test.php";

  // ======================= AUTH ====================== //

  static const String signUp = "$server/auth/signup.php";
  static const String login = "$server/auth/login.php";
  static const String verifycodessignup = "$server/auth/verifycode.php";

// ======================= ForgetPassword ====================== //

  static const String checkEmail = "$server/forgetpassword/checkemail.php";
  static const String resetPassword =
      "$server/forgetpassword/resetpassword.php";
  static const String verifycodeforgetpassword =
      "$server/forgetpassword/verifycode.php";

// ======================= Home ====================== //

  static const String homepage = "$server/home.php";

  // items
  static const String items = "$server/items/items.php";
}
