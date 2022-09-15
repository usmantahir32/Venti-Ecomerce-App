import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/height.dart';
import '../../../../constants/icons.dart';
import '../../../../constants/padding.dart';
import '../../../../constants/radius.dart';
import '../../../../constants/textsize.dart';
import '../../../../constants/width.dart';
import '../../../../utils/size_config.dart';
import '../../../widgets/TextView.dart';

class AnyTimeSellerCard extends StatefulWidget {
  AnyTimeSellerCard({
    Key? key,
    required this.image,
    required this.favourite,
    required this.title,
    required this.location,
    required this.time,
    required this.reviews,
    required this.rating,
  }) : super(key: key);
  final String image, title, location, time;
  final int reviews;
  final double rating;
  bool favourite;

  @override
  State<AnyTimeSellerCard> createState() => _AnyTimeSellerCardState();
}

class _AnyTimeSellerCardState extends State<AnyTimeSellerCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppHeights.height236,
      width: AppWidths.width292,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(AppRadius.radius15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: AppHeights.height156,
                width: AppWidths.width292,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(AppRadius.radius15),
                    topRight: Radius.circular(AppRadius.radius15),
                  ),
                  image: DecorationImage(
                      image: AssetImage(widget.image), fit: BoxFit.cover),
                ),
              ),
              Positioned(
                top: SizeConfig.heightMultiplier * 1.9,
                right: SizeConfig.widthMultiplier * 4.2,
                child: Container(
                    height: AppHeights.height25,
                    width: AppWidths.width25,
                    decoration: const BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          widget.favourite = !widget.favourite;
                        });
                      },
                      child: widget.favourite
                          ? Icon(
                              Icons.favorite_rounded,
                              color: AppColors.primarylightColor,
                              size: SizeConfig.imageSizeMultiplier * 5,
                            )
                          : Icon(
                              Icons.favorite_outline_rounded,
                              color: AppColors.primarylightColor,
                              size: SizeConfig.imageSizeMultiplier * 5,
                            ),
                    )),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppPaddings.padding15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: AppHeights.height10,
                ),
                TextView(
                  text: widget.title,
                  size: AppTexts.size16,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * .6,
                ),
                TextView(
                  text: widget.location,
                  size: AppTexts.size12,
                  fontWeight: FontWeight.w400,
                  color: AppColors.primarylightColor,
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * .6,
                ),
                Row(
                  children: [
                    SvgPicture.asset(AppIcons.star),
                    SizedBox(
                      width: SizeConfig.widthMultiplier * 1.6,
                    ),
                    TextView(
                      text: widget.rating.toString(),
                      size: AppTexts.size13,
                      fontWeight: FontWeight.w700,
                    ),
                    SizedBox(
                      width: SizeConfig.widthMultiplier * 1.6,
                    ),
                    TextView(
                      text: widget.reviews.toString() + "( Reviews)",
                      size: AppTexts.size13,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff7E7C7C),
                    ),
                    Spacer(),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Open till ',
                              style: TextStyle(
                                  fontSize: AppTexts.size13,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.textColor)),
                          TextSpan(
                              text: widget.time,
                              style: TextStyle(
                                  fontSize: AppTexts.size13,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.primarylightColor)),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
