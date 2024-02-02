import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyServices extends GetxService {
  late SharedPreferences sharedPreferences;

  Future<MyServices> init() async {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
      apiKey:
          "AIzaSyBcd0mBKTbXTQx_IPatyEaDzrl0hde8G88", // paste your api key here
      appId:
          "1:567121804914:android:9b66a93f235e94d21f8ceb", //paste your app id here
      messagingSenderId: "567121804914", //paste your messagingSenderId here
      projectId: "ecommerce-31c89", //paste your project id here
    ));
    sharedPreferences = await SharedPreferences.getInstance();

    return this;
  }
}

initialServices() async {
  await Get.putAsync(() => MyServices().init());
}
