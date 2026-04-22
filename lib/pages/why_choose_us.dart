import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:oaypay/components/conatiner.dart';

class WhyChooseUs extends StatelessComponent {
  const WhyChooseUs({super.key});

  final List<Map<String, String>> features = const [
    {
      'icon': 'iconamoon_send-fill.svg',
      'alt_text': 'fast transfer icon',
      'title': 'Superfast Transfer',
      'description': 'Send and receive funds at superfast speed when you use the GAP app.',
    },
    {
      'icon': 'uim_history-alt.svg',
      'alt_text': 'History Icon',
      'title': 'Transaction Insights',
      'description': 'Determine what habits you feed the most with our daily, weekly insights',
    },
    {
      'icon': 'ic_twotone-security.svg',
      'alt_text': 'Security Icon',
      'title': 'Topnotch Security',
      'description': 'We keep your data save from fraud with our 2FA security features encrypted end to end',
    },
    {
      'icon': 'lets-icons_money-fill.svg',
      'alt_text': 'Money Icon',
      'title': 'Earn While You Save',
      'description': 'Enjoy up to 15% annual interest on your savings when you choose any saving plans',
    },
  ];

  @override
  Component build(BuildContext context) {
    return section(classes: 'py-20 bg-evergreen-900', [
      AppConatiner(
        children: [
          section(classes: 'flex flex-col md:items-center md:justify-center', [
            h6(classes: 'uppercase text-lime-cream-300 mb-4 md:text-xl  font-medium }', [
              .text('why choose us?'),
            ]),
            h2(classes: 'mb-5 text-white text-4xl md:text-6xl font-medium md:w-3/4 md:text-center', [
              .text('Access your financial services all in one app'),
            ]),
            p(classes: 'text-lg md:text-2xl text-white/80 font-regular md:text-center md:w-4/5', [
              .text(
                'We stand out for their convenience, cost savings, and enhanced security. Customers can manage their finances from anywhere using their computer or mobile device.',
              ),
            ]),
          ]),
          div(classes: 'mt-20', [
            section(classes: 'flex flex-col md:flex-row  gap-12 ', [
              ...features.map(
                (e) {
                  return div([
                    img(
                      classes: 'w-16 mb-8 bg-pine-teal-800 p-4 rounded-full',
                      src: '/svgs/${e['icon']}',
                      alt: e['alt_text'],
                    ),
                    h4(classes: 'mb-5 text-white  text-xl md:text-3xl font-bold  ', [
                      .text(e['title']!),
                    ]),
                    p(classes: 'text-lg md:text-2xl text-white/80 font-regular  ', [
                      .text(
                        e['description']!,
                      ),
                    ]),
                  ]);
                },
              ),
            ]),
          ]),
        ],
      ),
    ]);
  }
}
