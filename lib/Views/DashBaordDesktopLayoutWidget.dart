import 'package:flutter/material.dart';
import 'package:responsive_app/Widgets/AllExpenses.dart';
import 'package:responsive_app/Widgets/ColumnOfCard.dart';
import 'package:responsive_app/Widgets/CustomDrawerWidget.dart';
import 'package:responsive_app/Widgets/QuickInvoice.dart';
import 'package:responsive_app/core/Constans/Colors.dart';

class DashBaordDesktopLayout extends StatelessWidget {
  const DashBaordDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.9),
      body: Padding(
        padding: EdgeInsets.only(
          top: 8,
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: ColorManager.primary,
                  ),
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(
                      10,
                    ),
                    bottomRight: Radius.circular(
                      10,
                    ),
                  ),
                ),
                child: CustomDrawerWidget(),
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Expanded(
              flex: 2,
              child: Column(children: [
                AllExpensesContainer(),
                SizedBox(
                  height: 8,
                ),
                QuickInvoiceWithExpanded(),
              ]),
            ),
            SizedBox(
              width: 8,
            ),
            Expanded(
              flex: 1,
              child: ColumnOfCard(),
            ),
          ],
        ),
      ),
    );
  }
}
