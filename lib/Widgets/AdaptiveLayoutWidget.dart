import 'package:flutter/material.dart';

class AdaptiveLayoutBuilder extends StatelessWidget {
  AdaptiveLayoutBuilder({
    super.key,
    required this.MobileLayout,
    required this.TabletLayout,
    required this.DestopLayout,
  });
  final WidgetBuilder MobileLayout, TabletLayout, DestopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraains) {
      if (constraains.maxWidth < 500) {
        return MobileLayout(context);
      } else if (constraains.maxWidth < 1200) {
        return TabletLayout(context);
      } else {
        return DestopLayout(context);
      }
    });
  }
}
