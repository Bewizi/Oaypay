import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class CardContainer extends StatelessComponent {
  const CardContainer({super.key, required this.children, this.classes});
  final List<Component> children;
  final String? classes;

  @override
  Component build(BuildContext context) {
    return div(classes: 'py-20 px-8 w-full h-[426px] bg-bright-snow-50 rounded-3xl ${classes ?? ""}', [...children]);
  }
}
