import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:oaypay/components/app_button.dart';
import 'package:oaypay/components/conatiner.dart';
import 'package:oaypay/components/main_headers.dart';

class HowItWorks extends StatelessComponent {
  const HowItWorks({super.key});

  final List<Map<String, String>> steps = const [
    {
      'icon': 'ic_sharp-download.svg',
      'alt_text': 'Sharp Download Icon',
      'title': 'Download App & Sign Up',
      'description': 'First download our app on apple store or google store and register ',
    },
    {
      'icon': 'bitcoin-icons_verify-filled.svg',
      'alt_text': 'Verify Icon',
      'title': 'Verify Your Account',
      'description': 'Provide any means of identification to verify your details to secure account',
    },
    {
      'icon': 'cib_sparkfun.svg',
      'alt_text': 'Services Icon',
      'title': 'Start Enjoying Services',
      'description': 'Enjoy our unlimited services like send, transfer, receive, pay bills and more',
    },
  ];

  @override
  Component build(BuildContext context) {
    return section(classes: 'py-20', [
      AppConatiner(
        children: [
          MainHeaders(
            title: 'how it works',
            description: 'A free bank account to power your financial',
            text: 'Easy 3 steps to use our services',
          ),

          section(classes: 'mt-20 flex flex-col md:flex-row items-center justify-center gap-8', [
            // flex this container on large screens and stack on small screens
            div([
              ...steps.map((step) {
                return div(classes: 'flex flex-col md:flex-row items-start md:items-center  gap-8 mb-12', [
                  // icons
                  img(src: '/svgs/${step['icon']}', alt: step['alt_text']!),
                  div([
                    // header
                    h1(classes: 'font-bold text-xl md:text-3xl text-evergreen-900 mb-5', [.text(step['title']!)]),
                    // description
                    p(classes: 'text-charcoal-blue-700  md:text-2xl w-4/5', [
                      .text(step['description']!),
                    ]),
                  ]),
                ]);
              }),
              const AppButton(),
            ]),
            img(src: '/images/how_it_works.png', alt: 'How It Works Image', classes: 'md:w-1/2'),
          ]),
        ],
      ),
    ]);
  }
}
