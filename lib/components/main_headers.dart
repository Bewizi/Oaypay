import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class MainHeaders extends StatelessComponent {
  const MainHeaders({
    super.key,
    this.title,
    this.description,
    this.text,
  });

  final String? title;
  final String? description;
  final String? text;

  @override
  Component build(BuildContext context) {
    return section([
      h6(classes: 'uppercase text-evergreen-900 mb-4 text-xl  font-medium }', [
        .text(title ?? ''),
      ]),
      h2(classes: 'mb-5 text-carbon-black-900 text-4xl md:text-6xl font-medium', [
        .text(description ?? ''),
      ]),
      p(classes: 'text-lg md:text-2xl text-charcoal-blue-700 font-regular', [
        .text(
          text ?? '',
        ),
      ]),
    ]);
  }
}
