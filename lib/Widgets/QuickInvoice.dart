import 'package:flutter/material.dart';
import 'package:responsive_app/Widgets/CustomDrawerWidget.dart';
import 'package:responsive_app/core/Constans/Colors.dart';
import 'package:responsive_app/core/Constans/Font.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: ColorManager.primary,
        ),
        borderRadius: BorderRadiusDirectional.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          QuickInvoiceHeader(),
          Align(
            child: Text(
              "Latast Invoice",
              style: getMediumTextStyle(
                ColorManager.grey,
                context: context,
              ),
            ),
            alignment: Alignment.centerLeft,
          ),
          QuickInvoiceListViewBuilder(),
          SizedBox(
            height: 8,
          ),
          RowCutomerNameAndEmail(),
          RowItemNameAndMount(),
          SizedBox(
            height: 8,
          ),
          QuickInvoiceFooter()
        ],
      ),
    );
  }
}

class QuickInvoiceWithExpanded extends StatelessWidget {
  const QuickInvoiceWithExpanded({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: ColorManager.primary,
          ),
          borderRadius: BorderRadiusDirectional.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            QuickInvoiceHeader(),
            Align(
              child: Text(
                "Latast Invoice",
                style: getMediumTextStyle(
                  ColorManager.grey,
                  context: context,
                ),
              ),
              alignment: Alignment.centerLeft,
            ),
            QuickInvoiceListViewBuilder(),
            SizedBox(
              height: 8,
            ),
            RowCutomerNameAndEmail(),
            RowItemNameAndMount(),
            SizedBox(
              height: 8,
            ),
            QuickInvoiceFooter()
          ],
        ),
      ),
    );
  }
}

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "QuickInvoice",
          style: getBoldTextStyle(
            ColorManager.primary,
            context: context,
          ),
        ),
        Icon(
          Icons.add_circle_outline_sharp,
          color: ColorManager.primary,
        ),
      ],
    );
  }
}

class QuickInvoiceListViewBuilder extends StatelessWidget {
  const QuickInvoiceListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (context, index) {
          return IntrinsicWidth(child: UserInfo());
        },
      ),
    );
  }
}

class RowCutomerNameAndEmail extends StatelessWidget {
  const RowCutomerNameAndEmail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              Text("Cutomer Name"),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter Your Name",
                  hintStyle: getLightTextStyle(
                    ColorManager.white,
                    context: context,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorManager.primary,
                    ),
                  ),
                ),
                style: getLightTextStyle(
                  ColorManager.primary,
                  context: context,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            children: [
              Text("Cutomer Email"),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorManager.primary,
                    ),
                  ),
                ),
                style: getLightTextStyle(
                  ColorManager.primary,
                  context: context,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class RowItemNameAndMount extends StatelessWidget {
  const RowItemNameAndMount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Item Name"),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorManager.primary,
                    ),
                  ),
                ),
                style: getLightTextStyle(
                  ColorManager.primary,
                  context: context,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            children: [
              Text("Item Mount"),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorManager.primary,
                    ),
                  ),
                ),
                style: getLightTextStyle(
                  ColorManager.primary,
                  context: context,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class QuickInvoiceFooter extends StatelessWidget {
  const QuickInvoiceFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TwoTextButton(
            text: "Add More Details",
            color: ColorManager.primary,
            backgroundColor: MaterialStatePropertyAll(
              ColorManager.white,
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: TwoTextButton(
            text: "Send Mony",
            color: ColorManager.white,
            backgroundColor: MaterialStatePropertyAll(
              ColorManager.primary,
            ),
          ),
        ),
      ],
    );
  }
}

class TwoTextButton extends StatelessWidget {
  const TwoTextButton({
    super.key,
    required this.color,
    required this.text,
    required this.backgroundColor,
  });
  final Color color;
  final MaterialStateProperty<Color> backgroundColor;
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        "${text}",
        style: getRegulerTextStyle(
          color,
          context: context,
        ),
      ),
      style: ButtonStyle(
        elevation: MaterialStatePropertyAll(1),
        shadowColor: MaterialStatePropertyAll(
          ColorManager.primary,
        ),
        backgroundColor: backgroundColor,
      ),
    );
  }
}
