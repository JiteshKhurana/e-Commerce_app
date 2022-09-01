import 'package:get/get.dart';
import 'package:thiya/data/api/api_client.dart';
import 'package:thiya/utils/app_constants.dart';

//Repository talk to the API Client
class PopularProductRepo extends GetxService {
  final APIClient apiClient;
  PopularProductRepo({required this.apiClient});

  Future<Response> getPopularProductList() async {
    return await apiClient.getData(AppConstants.POPULAR_PRODUCT_URI);
  }
}
