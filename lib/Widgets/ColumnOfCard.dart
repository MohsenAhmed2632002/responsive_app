import 'package:flutter/material.dart';
import 'package:responsive_app/core/Constans/Colors.dart';
import 'package:responsive_app/core/Constans/Font.dart';

class ColumnOfCard extends StatelessWidget {
  const ColumnOfCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
          color: ColorManager.primary,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            10,
          ),
          bottomLeft: Radius.circular(
            10,
          ),
        ),
      ),
      child: Column(
        children: [
          Text(
            "HI",
            style: getBoldTextStyle(
              ColorManager.primary,
              context: context,
            ),
          ),
          Text(
            "HI",
            style: getBoldTextStyle(
              ColorManager.primary,
              context: context,
            ),
          ),
          Text(
            "HI",
            style: getBoldTextStyle(
              ColorManager.primary,
              context: context,
            ),
          ),
          Text(
            "HI",
            style: getBoldTextStyle(
              ColorManager.primary,
              context: context,
            ),
          ),
          Text(
            "HI",
            style: getBoldTextStyle(
              ColorManager.primary,
              context: context,
            ),
          ),
          Text(
            "HI",
            style: getBoldTextStyle(
              ColorManager.primary,
              context: context,
            ),
          ),
          Text(
            "HI",
            style: getBoldTextStyle(
              ColorManager.primary,
              context: context,
            ),
          ),
          Text(
            "HI",
            style: getBoldTextStyle(
              ColorManager.primary,
              context: context,
            ),
          ),
          Text(
            "HI",
            style: getBoldTextStyle(
              ColorManager.primary,
              context: context,
            ),
          ),
          Text(
            "HI",
            style: getBoldTextStyle(
              ColorManager.primary,
              context: context,
            ),
          ),
          Text(
            "HI",
            style: getBoldTextStyle(
              ColorManager.primary,
              context: context,
            ),
          ),
          Text(
            "HI",
            style: getBoldTextStyle(
              ColorManager.primary,
              context: context,
            ),
          ),
          Text(
            "HI",
            style: getBoldTextStyle(
              ColorManager.primary,
              context: context,
            ),
          ),
        ],
      ),
    );
  }
}
