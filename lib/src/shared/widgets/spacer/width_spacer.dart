import 'package:flutter/cupertino.dart';

class WidthSpacer extends StatelessWidget {
  const WidthSpacer(this.width, {this.isSliver = false, super.key});

  final double width;
  final bool isSliver;

  @override
  Widget build(BuildContext context) {
    final child = SizedBox(
      width: width,
    );
    if (!isSliver) {
      return child;
    }
    return SliverToBoxAdapter(child: child);
  }
}
