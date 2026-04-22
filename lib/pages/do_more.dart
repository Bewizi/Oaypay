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
            'student_hanging_together.png',
            'do more with us',
            'Helping students and youth do more with zero access banking',
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et.',
            'flex-col-reverse lg:flex-row-reverse',
          ),

          doMoreItem(
            'money_control.png',
            'do more with us',
            'Be in complete control over your money',
            'our customers can have peace of mind knowing that their personal and financial information is secure with their account. your gateway to life free of stress is to be in control of your financial',
            'flex-col-reverse lg:flex-row',
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
    String? classes,
  ) {
    return div(classes: 'flex items-center gap-8 mb-12 $classes', [
      // icons
      img(src: '/images/$image', alt: '$title Icon', classes: ' overflow-hidden w-full'),
      div([
        h6(classes: 'text-evergreen-900 uppercase font-medium text-xl mb-8', [.text(title)]),
        // header
        h2(classes: 'font-medium text-4xl md:text-6xl text-carbon-black-900 mb-5 leading-normal', [.text(subtitle)]),
        // description
        p(classes: 'text-charcoal-blue-700 text-lg md:text-2xl w-4/5', [
          .text(description),
        ]),
      ]),
    ]);
  }
}
