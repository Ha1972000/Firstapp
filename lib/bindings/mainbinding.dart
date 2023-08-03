// import 'package:flutter/material.dart';
// class MainBinding extends Bindings  {
//   const MainBinding({Key? key}) : super(key: key);
//
//   @override
//   Future<void> dependencies() async {
//     Get.lazyPut(() => EventBus(), fenix: true);
//     Get.lazyPut(() => BehaviorSubject<BaseModel>(), fenix: true);
//     Get.lazyPut(() => LocalStorageImpl(), fenix: true);
//     Get.lazyPut(() => LocalAuthentication(), fenix: true);
//     Get.put(AppController());
//
//     final ApiClient client =
//     await ApiClient.getInstance(Dio(), Get.find(), Get.find());
//
//     Get.lazyPut(() => client, fenix: true);
//   }
// }
