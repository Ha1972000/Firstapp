import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import '../models/favorite_model.dart';

class ListViewModel extends GetxController {
  var isLoading = false.obs;
  var list =
      TestJson(id: 1, postId: 1,userId: 1, comment: '').obs;

  final _abc = <TestJson>[].obs;
  List<TestJson> get abc => _abc.value;
  getDataFromApi() async {
    // isLoading.value = true;
    var response =
    await Dio().get('https://jsonplaceholder.org/comments');
    log('data: $response');
    // abc = await response.data ;

    return response.data;
    print(response);
    isLoading.value = false;
  }
  getData() async {
    final res = await getDataFromApi();
    List<TestJson> data = [];
    (res as List).forEach((element) {
      data.add(TestJson.fromJson(element));
    });
    _abc.value = data.cast<TestJson>();
    _abc.refresh();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    getData();
    super.onInit();
  }
}
