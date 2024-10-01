import 'package:flutter/cupertino.dart';

class HeightSpacer extends StatelessWidget {
  const HeightSpacer(this.height, {this.isSliver = false, super.key});

  final double height;
  final bool isSliver;

  @override
  Widget build(BuildContext context) {
    final child = SizedBox(
      height: height,
    );
    if (!isSliver) {
      return child;
    }
    return SliverToBoxAdapter(child: child);
  }
}
