import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class AppConatiner extends StatelessComponent {
  const AppConatiner({super.key, required this.children, this.classes});

  final List<Component> children;
  final String? classes;

  @override
  Component build(BuildContext context) {
    return section(classes: 'max-w-screen-2xl mx-auto px-12 ${classes ?? ""}', [...children]);
  }
}
