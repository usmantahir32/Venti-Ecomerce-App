import 'package:ecommerce_app/constants/colors.dart';

import 'package:ecommerce_app/constants/radius.dart';
import 'package:ecommerce_app/constants/textsize.dart';
import 'package:ecommerce_app/constants/width.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../constants/icons.dart';
import '../../../constants/padding.dart';
import '../../../utils/size_config.dart';
import '../../widgets/TextView.dart';
import '../../widgets/custom_text_button.dart';

class DetailCartProduct extends StatefulWidget {
  const DetailCartProduct({Key? key}) : super(key: key);

  @override
  State<DetailCartProduct> createState() => _DetailCartProductState();
}

class _DetailCartProductState extends State<DetailCartProduct> {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: SizeConfig.imageSizeMultiplier * 5,
            color: Colors.black,
          ),
        ), //size5
        title: const Text(
          'Cart',
          style: TextStyle(
            color: Color(0xff536F95),
            fontWeight: FontWeight.w600,
            fontSize: 15,
          ),
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: SizeConfig.heightMultiplier * 1.75,
                ),
                Container(
                  height: SizeConfig.heightMultiplier * 18.8,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.all(Radius.circular(AppRadius.radius20)),
                    color: const Color(0xff536F95).withOpacity(0.1),
                  ),
                  child: Center(
                      child: Image.asset(
                    "assets/images/detail_shoe.png",
                    height: SizeConfig.heightMultiplier * 14.9,
                    width: AppWidths.width258,
                  )),
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 1.75,
                ),
                Text(
                  "Jordan 1 Retro High Tie Dye",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: AppTexts.size16,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 1,
                ),
                Text(
                  "Adidas . Grey . 42",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: const Color(0xff666666),
                    fontSize: AppTexts.size12,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 1.2,
                ),
                Row(
                  children: [
                    Text(
                      '\$235,00',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: AppTexts.size14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                        onTap: () {
                          setState(() {
                            if (value == 0) {
                              value = value;
                            } else {
                              value = value - 1;
                            }
                          });
                        },
                        child: SvgPicture.asset(AppIcons.minuscircle)),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: AppPaddings.padding8),
                      child: TextView(
                        text: value.toString(),
                        size: AppTexts.size14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    InkWell(
                        onTap: () {
                          setState(() {
                            value = value + 1;
                          });
                        },
                        child: SvgPicture.asset(AppIcons.addcircle))
                  ],
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 17.3,
                ),
                Align(
                  alignment: Alignment.center,
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "All Items are available",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff4CD964),
                          letterSpacing: 1,
                        ),
                      )),
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 5.95,
                ),
                Container(
                  height: SizeConfig.heightMultiplier * 14.9,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.all(Radius.circular(AppPaddings.padding8)),
                    color: AppColors.primarydarkColor.withOpacity(0.1),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(AppPaddings.padding8),
                    child: Text(
                      "Kindly make the payment once you collect the product from the seller as the order will be colledted from the provided address!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.primarydarkColor,
                        fontSize: AppTexts.size12,
                        height: 2,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
                height: SizeConfig.heightMultiplier * 13.7,
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 2.5,
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                "Grand Total",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: AppTexts.size12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(
                                height: SizeConfig.heightMultiplier * 2,
                              ),
                              Text(
                                "\$705.00",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: AppTexts.size20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          CustomTextButton(
                            callback: () {},
                            title: 'CHECK OUT',
                            height: SizeConfig.heightMultiplier * 6.3,
                            width: AppWidths.width150,
                            radius: AppRadius.radius30,
                            textcolour: Colors.white,
                            fontSize: AppTexts.size14,
                            colour: AppColors.primarylightColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
