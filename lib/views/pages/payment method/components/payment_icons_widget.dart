
import 'package:ecommerce_app/constants/radius.dart';
import 'package:ecommerce_app/constants/width.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:ecommerce_app/views/widgets/TextView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentIconsWidget extends StatelessWidget {
  final String icon, title;
  const PaymentIconsWidget({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: SizeConfig.heightMultiplier * 7.7,
          width: AppWidths.width64,
          decoration: BoxDecoration(
            color: Colors.blueGrey.withOpacity(0.1),
            borderRadius: BorderRadius.circular(AppRadius.radius20),
          ),
          child: Center(
            child: SvgPicture.asset(icon),
          ),
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 1.5,
        ),
        TextView(text: title)
      ],
    );
  }
}
