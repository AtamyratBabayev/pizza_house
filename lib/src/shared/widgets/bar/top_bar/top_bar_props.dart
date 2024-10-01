import 'top_bar_action/top_bar_action.dart';

class TopBarProps {
  TopBarProps({this.title, this.actions});

  final String? title;
  final List<TopBarActionProps>? actions;
}
