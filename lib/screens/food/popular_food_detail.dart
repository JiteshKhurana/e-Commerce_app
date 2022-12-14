import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:thiya/widgets/Reusable_app_column.dart';
import 'package:thiya/widgets/app_icon.dart';
import 'package:thiya/widgets/expandable_text_widget.dart';
import '../../utils/colors.dart';
import '../../utils/dimensions.dart';
import '../../widgets/big_text.dart';
import '../../widgets/icon_and_text_widget.dart';
import '../../widgets/small_text.dart';

class PopularFoodDetail extends StatefulWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  State<PopularFoodDetail> createState() => _PopularFoodDetailState();
}

class _PopularFoodDetailState extends State<PopularFoodDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //background image
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: Dimensions.popularFoodImgSize,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/image/food0.png'),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          //icon widgets
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20,
            right: Dimensions.height20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.arrow_back_ios_new,
                ),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
          ),
          //Introduction of food
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimensions.popularFoodImgSize - 20,
            child: Container(
                padding: EdgeInsets.only(
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                    top: Dimensions.height20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(Dimensions.radius20),
                      topLeft: Radius.circular(Dimensions.radius20)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const AppColumn(
                      text: 'Chinese Side',
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    BigText(text: 'Introduce'),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    //Expandable Text Widget
                    Expanded(
                      child: SingleChildScrollView(
                        child: ExpandableText(
                            text:
                                "While wood ear mushrooms suffer from a mildly unpalatable name, theirWhile wood ear mushrooms suffer from a mildly unpalatable name, theirWhile wood ear mushrooms suffer from a mildly unpalatable name, theirWhile wood ear mushrooms suffer from a mildly unpalatable name, theirWhile wood ear mushrooms suffer from a mildly unpalatable name, their flavor alone speaks for itself This classy salad dresses wood ear mushrooms up with a bit of tangy dressing and crunchy bowl mates Top with fresh cilantro, and you???ll have an interesting dish that???s a crowd-pleaser."),
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.only(
            top: Dimensions.height30,
            bottom: Dimensions.height30,
            left: Dimensions.width20,
            right: Dimensions.width20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.radius20 * 2),
            topRight: Radius.circular(Dimensions.radius20 * 2),
          ),
          color: AppColors.buttonBackgroundColor,
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
            padding: EdgeInsets.all(Dimensions.height20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(Dimensions.radius20),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.remove,
                  color: AppColors.signColor,
                ),
                SizedBox(
                  width: Dimensions.width10 / 2,
                ),
                BigText(text: '0'),
                SizedBox(
                  width: Dimensions.width10 / 2,
                ),
                Icon(
                  Icons.add,
                  color: AppColors.signColor,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(Dimensions.height20),
            decoration: BoxDecoration(
              color: AppColors.mainColor,
              borderRadius: BorderRadius.circular(Dimensions.radius20),
            ),
            child: BigText(
              text: "???220 Add to cart",
              color: Colors.white,
            ),
          ),
        ]),
      ),
    );
  }
}
