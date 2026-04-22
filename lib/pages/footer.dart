import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:oaypay/components/conatiner.dart';

class Footer extends StatelessComponent {
  const Footer({super.key});

  final List<String> company = const ['About us', 'Our Vision', 'Our Mission'];

  final List<String> personal = const [
    'Account Opening',
    'Savings',
    'Bills Payments',
    'Expenses Tracker',
    'Loans',
    'Investment',
    'Buy Now Pay Later',
  ];

  final List<String> business = const [
    'Business Loans',
    'Funds Transfer',
    'Inventory',
    'Invoice Generation',
    'Book-Keeping',
    'Investment',
  ];

  final List<String> resources = const [
    'Help Center',
    'Know More',
    'Partnership',
    'ATM Center',
    'KYC Verification',
    'Blogs',
  ];

  final List<String> socialMedia = const [
    'Facebook',
    'Twitter',
    'LinkedIn',
    'Instagram',
  ];

  @override
  Component build(BuildContext context) {
    return section(classes: 'py-20', [
      AppConatiner(
        children: [
          section(classes: 'flex flex-col  md:items-center ', [
            h2(classes: 'mb-5 text-evergreen-900 text-6xl md:text-9xl font-regular   uppercase', [
              .text('OAYPAY'),
            ]),
            p(classes: 'lg:text-lg md:text-xl text-charcoal-blue-700 font-regular  max-w-xl mb-10', [
              .text(
                'We are a financial services company led by individuals with over 35years collective investment banking, Corporate finance, retail banking & financial technology experience',
              ),
            ]),
          ]),
          div(classes: 'divide-solid divide-evergreen-900 w-full divide-x-2', []),

          section(classes: ' mt-10 flex flex-col md:flex-row items-center md:items-start justify-center lg:gap-20 ', [
            // company
            div(classes: 'mb-8', [
              h3(classes: 'text-2xl font-medium text-carbon-black-900', [.text('Company')]),
              ul(classes: 'flex flex-col gap-2 mt-3', [
                for (final item in company) li(classes: 'text-charcoal-blue-700 font-regular', [.text(item)]),
              ]),
            ]),
            // personal
            div(classes: 'mb-8', [
              h3(classes: 'text-2xl font-medium text-carbon-black-900', [.text('Personal')]),
              ul(classes: 'flex flex-col gap-2 mt-3', [
                for (final item in personal) li(classes: 'text-charcoal-blue-700 font-regular', [.text(item)]),
              ]),
            ]),
            // business
            div(classes: 'mb-8', [
              h3(classes: 'text-2xl font-medium text-carbon-black-900', [.text('Business')]),
              ul(classes: 'flex flex-col gap-2 mt-3', [
                for (final item in business) li(classes: 'text-charcoal-blue-700 font-regular', [.text(item)]),
              ]),
            ]),
            // resources
            div(classes: 'mb-8', [
              h3(classes: 'text-2xl font-medium text-carbon-black-900', [.text('Resources')]),
              ul(classes: 'flex flex-col gap-2 mt-3', [
                for (final item in resources) li(classes: 'text-charcoal-blue-700 font-regular', [.text(item)]),
              ]),
            ]),
            // Follow us
            div(classes: 'mb-8', [
              h3(classes: 'text-2xl font-medium text-carbon-black-900', [.text('Follow Us')]),
              ul(classes: 'flex flex-col gap-2 mt-3', [
                for (final item in socialMedia) li(classes: 'text-charcoal-blue-700 font-regular', [.text(item)]),
              ]),
            ]),
          ]),
        ],
      ),
    ]);
  }
}
