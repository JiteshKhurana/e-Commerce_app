import 'package:get/get.dart';
import 'package:thiya/controller/popular_product_controller.dart';
import 'package:thiya/data/api/api_client.dart';
import 'package:thiya/data/repository/popular_product_repo.dart';
import 'package:thiya/utils/app_constants.dart';

Future<void> init() async {
  //api client
  Get.lazyPut(
      () => APIClient(appBaseURL: AppConstants.BASE_URL));

  //repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  //controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
