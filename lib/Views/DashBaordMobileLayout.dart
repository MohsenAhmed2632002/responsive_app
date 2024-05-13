import 'package:flutter/material.dart';
import 'package:responsive_app/Widgets/AllExpenses.dart';
import 'package:responsive_app/Widgets/ColumnOfCard.dart';
import 'package:responsive_app/Widgets/CustomDrawerWidget.dart';
import 'package:responsive_app/Widgets/QuickInvoice.dart';
import 'package:responsive_app/core/Constans/Colors.dart';
import 'package:responsive_app/core/utils/app_string.dart';

class DashBaordMobileLayout extends StatelessWidget {
  const DashBaordMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SafeArea(
        child: Drawer(
          elevation: 4,
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
      ),
      appBar: AppBar(
          title: Text(
            AppStrings.appName,
          ),
          actions: [
            Icon(Icons.mobile_friendly),
          ]),
      backgroundColor: Colors.white.withOpacity(.9),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              // flex: 3,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    AllExpensesContainer(),
                    SizedBox(
                      height: 8,
                    ),
                    QuickInvoice(),
                    SizedBox(
                      height: 8,
                    ),
                    ColumnOfCard(),
                  ],
                ),
              ),
            ),
            // SizedBox(
            //   width: 8,
            // ),
            // Expanded(
            //   flex: 2,
            //   child: SizedBox(),
            // ),
          ],
        ),
      ),
    );
  }
}
