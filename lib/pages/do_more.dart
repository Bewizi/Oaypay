import "package:jaspr/jaspr.dart";
import 'package:jaspr/dom.dart';
import 'package:oaypay/components/conatiner.dart';

class DoMore extends StatelessComponent {
  const DoMore({super.key});

  @override
  Component build(BuildContext context) {
    return section(classes: 'py-20', [
      AppConatiner(
        children: [
          doMoreItem(
            'money_control.png',
            'do more with us',
            'Helping students and youth do more with zero access banking',
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et.',
          ),
        ],
      ),
    ]);
  }

  Component doMoreItem(
    String image,
    String title,
    String subtitle,
    String description,
  ) {
    return div(classes: 'flex items-center gap-8 mb-12', [
      // icons
      img(src: '/images/$image', alt: '$title Icon'),
      div([
        h6(classes: 'text-evergreen-900 uppercase font-medium text-xl mb-8', [.text(title)]),
        // header
        h2(classes: 'font-medium text-6xl text-carbon-black-900 mb-5', [.text(subtitle)]),
        // description
        p(classes: 'text-charcoal-blue-700 text-2xl w-4/5', [
          .text(description),
        ]),
      ]),
    ]);
  }
}
