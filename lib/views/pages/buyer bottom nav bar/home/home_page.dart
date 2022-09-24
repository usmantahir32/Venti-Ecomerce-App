import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/constants/height.dart';
import 'package:ecommerce_app/constants/icons.dart';
import 'package:ecommerce_app/constants/padding.dart';

import 'package:ecommerce_app/models/live_tracking_model/carousel_model.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/pages/buyer%20bottom%20nav%20bar/home/components/anytime_seller_section.dart';
import 'package:ecommerce_app/views/pages/buyer%20bottom%20nav%20bar/home/components/categories_section.dart';
import 'package:ecommerce_app/views/pages/buyer%20bottom%20nav%20bar/home/components/live_detail_section.dart';
import 'package:ecommerce_app/views/pages/buyer%20bottom%20nav%20bar/home/components/my_points.dart';
import 'package:ecommerce_app/views/pages/buyer%20bottom%20nav%20bar/home/components/new_adds.dart';
import 'package:ecommerce_app/views/pages/buyer%20bottom%20nav%20bar/home/components/service_provider_section.dart';
import 'package:ecommerce_app/views/pages/buyer%20bottom%20nav%20bar/home/components/special_for_you_section.dart';
import 'package:ecommerce_app/views/pages/buyer%20bottom%20nav%20bar/home/components/stories.dart';
import 'package:ecommerce_app/views/pages/buyer%20bottom%20nav%20bar/home/components/trending_section.dart';

import 'package:ecommerce_app/views/pages/stores/stores.dart';
import 'package:ecommerce_app/views/widgets/TextView.dart';
import 'package:ecommerce_app/views/widgets/sectiontitleandseeall.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../widgets/carousel_card_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = PageController(viewportFraction: 1, keepPage: true);

  final pages = List.generate(
    listCarousel.length,
    (index) => CarouselCard(
      image: listCarousel[index].image,
      title: listCarousel[index].title,
      price: listCarousel[index].price,
      titleColor: Colors.white,
      iscontainer: false,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: Padding(
          padding: EdgeInsets.all(AppPaddings.padding15),
          child: GestureDetector(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: SvgPicture.asset(AppIcons.drawer)),
        ),
        title: TextView(
          text: "VENTI",
          color: AppColors.primarylightColor,
          fontWeight: FontWeight.w600,
          size: SizeConfig.textMultiplier * 1.9,
        ),
        actions: [
          Stack(children: [
            Padding(
              padding: EdgeInsets.only(
                  top: AppPaddings.padding15, right: AppPaddings.padding15),
              child: SvgPicture.asset(AppIcons.cart),
            ),
            Positioned(
              top: SizeConfig.heightMultiplier * 2,
              right: SizeConfig.widthMultiplier * 3.1,
              child: CircleAvatar(
                backgroundColor: AppColors.primarylightColor,
                radius: SizeConfig.widthMultiplier * 1.1,
              ),
            )
          ]),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stories(),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: AppPaddings.padding18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: AppHeights.height18,
                    ),
                    NewAdds(controller: controller, pages: pages),
                    SizedBox(
                      height: AppHeights.height26,
                    ),
                    const LiveDetailSection(),
                    SizedBox(
                      height: AppHeights.height20,
                    ),
                    SectionTitleAndSeeAll(
                        title: "Categories",
                        onpress: () {},
                        titlesize: SizeConfig.textMultiplier * 2.04),
                    SizedBox(height: AppHeights.height20),
                  ],
                ),
              ),
              CategoriesSection(),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: AppPaddings.padding18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: SizeConfig.heightMultiplier * 5.1,
                    ),
                    MyPoints(),
                    SizedBox(height: AppHeights.height35),
                    TextView(
                      text: "Curated Stores",
                      fontWeight: FontWeight.w700,
                      size: SizeConfig.textMultiplier * 2.55,
                    ),
                    SizedBox(
                      height: AppHeights.height8,
                    ),
                    TextView(
                      text: "Trending",
                      fontWeight: FontWeight.w700,
                      size: SizeConfig.textMultiplier * 2.04,
                    ),
                    SizedBox(
                      height: AppHeights.height18,
                    ),
                  ],
                ),
              ),
              TrendingSection(),
              SizedBox(
                height: AppHeights.height21,
              ),
              Padding(
                padding: EdgeInsets.only(left: AppPaddings.padding24),
                child: TextView(
                  text: "Special For You",
                  fontWeight: FontWeight.w700,
                  size: SizeConfig.textMultiplier * 2.04,
                  color: AppColors.textColor,
                ),
              ),
              SizedBox(
                height: AppHeights.height18,
              ),
              SpecialForYouSection(),
              AnyTimeSellerSection(),
              SizedBox(
                height: AppHeights.height25,
              ),
              Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: AppPaddings.padding24),
                  child: SectionTitleAndSeeAll(
                      title: "Service Providers",
                      onpress: () {
                        Get.to(Stores(
                            title: "AnyTime Seller", isstore: "isanytime"));
                      },
                      titlesize: SizeConfig.textMultiplier * 2.55)),
              SizedBox(
                height: AppHeights.height21,
              ),
              ServiceProviderSection(),
              SizedBox(
                height: SizeConfig.heightMultiplier * 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
