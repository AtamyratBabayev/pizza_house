import 'package:flutter/material.dart';

class AutoLeadingIconButton extends StatelessWidget {
  const AutoLeadingIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    final ModalRoute<dynamic>? parentRoute = ModalRoute.of(context);
    final bool hasDrawer = Scaffold.maybeOf(context)?.hasDrawer ?? false;
    final bool useCloseButton =
        parentRoute is PageRoute<dynamic> && parentRoute.fullscreenDialog;

    if (hasDrawer) {
      return const DrawerButton();
    } else if (parentRoute?.impliesAppBarDismissal ?? false) {
      return useCloseButton ? const CloseButton() : const BackButton();
    }
    return const SizedBox();
  }
}
