import 'package:flutter/material.dart';
import 'package:responsive_app/Model/DrawerModel.dart';
import 'package:responsive_app/core/Constans/Colors.dart';
import 'package:responsive_app/core/Constans/Font.dart';
import 'package:responsive_app/core/Constans/image.dart';

class CustomDrawerWidget extends StatefulWidget {
  const CustomDrawerWidget({
    super.key,
  });
  @override
  State<CustomDrawerWidget> createState() => _CustomDrawerWidgetState();
}

class _CustomDrawerWidgetState extends State<CustomDrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverToBoxAdapter(
        child: UserInfo(),
      ),
      SliverToBoxAdapter(
        child: SizedBox(
          height: 20,
        ),
      ),
      ListViewListTile(),
      SliverFillRemaining(
        hasScrollBody: false,
        // fillOverscroll: true,
        child: ListViewListTileTwo(),
      ),
    ]);
  }
}

class UserInfo extends StatelessWidget {
  const UserInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: ColorManager.grey.withOpacity(
        .5,
      ),
      color: ColorManager.darkGrey.withOpacity(
        .2,
      ),
      child: ListTile(
        leading: Image.asset(
          width: 60,
          ImageAssets.imagePer,
          filterQuality: FilterQuality.high,
        ),
        title: Text(
          "Abdel Mohsen",
          style: getRegulerTextStyle(
            ColorManager.primary,
            context: context,
          ),
        ),
        subtitle: Text(
          "abdelmohsen2632002@gmail.com",
          style: getLightTextStyle(
            ColorManager.darkGrey,
            context: context,
          ),
        ),
      ),
    );
  }
}

class ListViewListTile extends StatefulWidget {
  ListViewListTile({super.key});

  @override
  State<ListViewListTile> createState() => _ListViewListTileState();
}

class _ListViewListTileState extends State<ListViewListTile> {
  final List<DrawerModel> ItmesList = [
    DrawerModel(
      name: "Mohsen",
      image: ImageAssets.imagePer,
    ),
    DrawerModel(
      name: "Shady",
      image: ImageAssets.imagePer,
    ),
    DrawerModel(
      name: "Gamal",
      image: ImageAssets.imagePer,
    ),
    DrawerModel(
      name: "Mahmod",
      image: ImageAssets.imagePer,
    ),
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) => GestureDetector(
        onTap: () => setState(() {
          activeIndex = index;
        }),
        child: ListTileViewItems(
          isActive: activeIndex == index,
          drawerModel: ItmesList[index],
        ),
      ),
      itemCount: ItmesList.length,
    );
  }
}

class ListTileViewItems extends StatelessWidget {
  const ListTileViewItems({
    super.key,
    required this.drawerModel,
    required this.isActive,
  });
  final DrawerModel drawerModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: Image.asset(
          width: 70,
          "${drawerModel.image}",
          filterQuality: FilterQuality.high,
        ),
        title: Text(
          "${drawerModel.name}",
          style: isActive
              ? getMediumTextStyle(
                  fontSize: 12,
                  ColorManager.primary,
                  context: context,
                )
              : getLightTextStyle(
                  ColorManager.grey,
                  context: context,
                ),
        ),
        trailing: isActive
            ? Container(
                width: 5,
                decoration: BoxDecoration(
                  color: ColorManager.lightPrimary,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(
                      10,
                    ),
                    bottom: Radius.circular(
                      10,
                    ),
                  ),
                ),
              )
            : SizedBox(),
      ),
    );
  }
}

class ListViewListTileTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: SizedBox()),
        Container(
          child: ListTile(
            leading: Icon(
              Icons.settings,
              color: ColorManager.primary,
            ),
            title: Text(
              "Setting System",
              style: getMediumTextStyle(
                ColorManager.primary,
                context: context,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
