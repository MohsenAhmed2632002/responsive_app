import 'package:flutter/material.dart';
import 'package:responsive_app/Model/AllExpensesModel.dart';
import 'package:responsive_app/core/Constans/Colors.dart';
import 'package:responsive_app/core/Constans/Font.dart';
import 'package:responsive_app/core/Constans/image.dart';

class AllExpensesContainer extends StatefulWidget {
  AllExpensesContainer({super.key});

  @override
  State<AllExpensesContainer> createState() => _AllExpensesContainerState();
}

class _AllExpensesContainerState extends State<AllExpensesContainer> {
  final List<AllExpensesModel> allExpensesModelitems = [
    AllExpensesModel(
      image: ImageAssets.imagePer,
      title: "Income",
      date: "April 2022",
      price: r"$200",
    ),
    AllExpensesModel(
      image: ImageAssets.imagePer,
      title: "Income",
      date: "April 2022",
      price: r"$200",
    ),
    AllExpensesModel(
      image: ImageAssets.imagePer,
      title: "Income",
      date: "April 2022",
      price: r"$200",
    ),
  ];
  var selectedIndex = 3;
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
          HeaderOfAllExpenses(),
          Row(
            children: allExpensesModelitems.asMap().entries.map((e) {
              int index = e.key;
              var item = e.value;
              if (index == selectedIndex) {
                return Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: AllExpensesItems(
                        allExpensesModel: item,
                        isSelected: selectedIndex == index,
                      ),
                    ),
                  ),
                );
              } else {
                return Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: AllExpensesItems(
                      allExpensesModel: item,
                      isSelected: selectedIndex == index,
                    ),
                  ),
                );
              }
            }).toList(),
          ),
        ],
      ),
    );
  }
}

class AllExpensesItems extends StatelessWidget {
  const AllExpensesItems({
    super.key,
    required this.allExpensesModel,
    required this.isSelected,
  });
  final AllExpensesModel allExpensesModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: isSelected ? Colors.white : ColorManager.primary,
        border: Border.all(
          color: ColorManager.primary,
        ),
        borderRadius: BorderRadiusDirectional.circular(10),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(allExpensesModel.image),
                radius: 18,
              ),
              Icon(
                Icons.arrow_right_alt_sharp,
                size: 20,
              ),
            ],
          ),
          Text(
            "${allExpensesModel.title}",
            style: getMediumTextStyle(
              fontSize: 12,
              isSelected ? ColorManager.primary : Colors.white,
              context: context,
            ),
          ),
          Text(
            "${allExpensesModel.date}",
            style: getLightTextStyle(
              isSelected ? ColorManager.primary : Colors.white,
              context: context,
            ),
          ),
          Text(
            "${allExpensesModel.price}",
            style: getMediumTextStyle(
              isSelected ? ColorManager.primary : Colors.white,
              context: context,
            ),
          ),
        ],
      ),
    );
  }
}

class HeaderOfAllExpenses extends StatelessWidget {
  const HeaderOfAllExpenses({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "All Expenses",
          style: getMediumTextStyle(
            ColorManager.primary,
            context: context,
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(
              color: ColorManager.primary,
            ),
            borderRadius: BorderRadiusDirectional.circular(10),
          ),
          child: Row(
            children: [
              Text(
                "Month",
              ),
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.arrow_downward_rounded,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
