import 'package:get/get.dart';
import 'package:thiya/utils/app_constants.dart';

//API  Client is used to talk to the server
class APIClient extends GetConnect implements GetxService {
  late String token;
  final String appBaseURL;
  late Map<String, String> _mainHeaders; //storing data locally

  APIClient({required this.appBaseURL}) {
    baseUrl = appBaseURL;
    timeout = Duration(seconds: 30);
    token = AppConstants.TOKEN;
    _mainHeaders = {
      'Content-type': 'application/json; charset=UTF-8',
      'Authorization': 'Bearer $token',
    };
  }

  Future<Response> getData(String uri) async {
    try {
      Response response = await get(uri);
      return response;
    } catch (e) {
      return Response(
        statusCode: 1,
        statusText: e.toString(),
      );
    }
  }
}
