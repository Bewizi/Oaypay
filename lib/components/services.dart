import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:oaypay/components/card_container.dart';
import 'package:oaypay/components/conatiner.dart';

class OurServices extends StatelessComponent {
  const OurServices({super.key});

  final services = const [
    {
      'icon': 'quick-transfer.svg',
      'title': 'Quick Transfer',
      'description': 'Send money to loved ones or business transaction in a heartbeat.',
    },
    {
      'icon': 'quick-withdrawal.svg',
      'title': 'Quick Withdrawal',
      'description': 'With oaypay, you have unlimited withdrawal of your money anytime',
    },
    {
      'icon': 'secure-savings.svg',
      'title': 'Savings & Investment',
      'description': 'Make a positive income from dividend paid directly to you when you save & invest',
    },
    {
      'icon': 'business-loans.svg',
      'title': 'Business Loans',
      'description': 'Access business loans easily when you bank with us',
    },
    {
      'icon': 'solar_bill-check-broken.svg',
      'title': 'Bill Payment',
      'description': 'Paid bills instantly with our intuitive payment dashboard',
    },
    {
      'icon': 'solar_bill-check-broken.svg',
      'title': 'Budget Control',
      'description': 'Control and have budget of your finance with our budget management',
    },
  ];

  @override
  Component build(BuildContext context) {
    return section(classes: 'py-20', [
      AppConatiner(
        children: [
          h6(classes: 'uppercase text-evergreen-900 mb-4 text-xl text-evergreen-900 font-medium', [
            .text('our services'),
          ]),
          h4(classes: 'mb-5 text-carbon-black-900 text-6xl font-medium', [
            .text('Exclusive range of services to manage your finance and spending'),
          ]),
          p(classes: 'text-2xl text-charcoal-blue-700 font-regular', [
            .text(
              'Enjoy a world of financial possibilities and full access to financial services personalized to your needs.',
            ),
          ]),

          section(classes: 'pt-20 grid grid-cols-3 gap-8', [
            ...services.map(
              (e) => CardContainer(
                classes: 'flex flex-col items-center justify-center',
                children: [
                  div(
                    classes: 'bg-pine-teal-800 w-[68px] h-[68px] rounded-full flex items-center justify-center mb-12',
                    [
                      img(src: '/images/${e['icon']}', alt: 'Transfer Icon', width: 32, height: 32),
                    ],
                  ),
                  h3(classes: 'font-bold text-3xl text-carbon-black-900  mb-5', [.text(e['title']!)]),
                  p(classes: 'text-charcoal-blue-700 text-2xl font-regular text-center', [
                    .text(
                      e['description']!,
                    ),
                  ]),
                ],
              ),
            ),
          ]),
        ],
      ),
    ]);
  }
}
