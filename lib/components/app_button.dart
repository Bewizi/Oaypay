import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class AppButton extends StatelessComponent {
  const AppButton({super.key});

  @override
  Component build(BuildContext context) {
    return button(
      classes:
          'text-dark-slate-grey-800 bg-lime-cream-300 hover:bg-lime-cream-400 py-5 px-12 rounded-full font-medium md:text-2xl mt-14',
      [.text('Get started for free')],
    );
  }
}
