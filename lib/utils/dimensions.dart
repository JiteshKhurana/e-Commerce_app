import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;
  static double pageViewContainer = screenHeight / 3.966;
  static double pageViewTextContainer = screenHeight / 6.981;
  static double pageView = screenHeight / 2.727;

  //dynamic height for padding and margin
  static double height10 = screenHeight / 87.272;
  static double height15 = screenHeight / 58.181;
  static double height20 = screenHeight / 43.636;
  static double height30 = screenHeight / 29.09;
  static double height45 = screenHeight / 19.3997;

  //dynamic width for padding and margin
  static double width10 = screenHeight / 87.272;
  static double width15 = screenHeight / 58.181;
  static double width20 = screenHeight / 43.636;
  static double width30 = screenHeight / 29.09;

  //fontsize
  static double font16 = screenHeight / 54.545;
  static double font22 = screenHeight / 39.669;
  static double font26 = screenHeight / 33.566;

  static double radius20 = screenHeight / 43.636;
  static double radius30 = screenHeight / 29.09;
  static double radius15 = screenHeight / 58.181;

  static double iconSize24 = screenHeight / 36.36;
  static double iconSize16 = screenHeight / 54.545;

  //list view size
  static double listViewImgSize = screenHeight / 7.27;
  static double listViewTextContainer = screenHeight / 8.7272;

  //popular food
  static double popularFoodImgSize = screenHeight / 2.493;

  //bottom height
  static double bottomHeightBar = screenHeight / 7.272;
}
