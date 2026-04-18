import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:oaypay/components/app_button.dart';
import 'package:oaypay/components/conatiner.dart';
import 'package:oaypay/components/services.dart';

class Home extends StatelessComponent {
  const Home({super.key});

  @override
  Component build(BuildContext context) {
    return section([
      section(classes: 'bg-linear-to-l from-pine-teal-800 to-evergreen-900', [
        AppConatiner(
          classes: 'py-20 ',
          children: [
            section(classes: 'flex items-center justify-center gap-20', [
              div([
                span(classes: 'uppercase text-lime-cream-300 bg-pine-teal-800 py-3 px-4 rounded-full', [
                  .text('all in one banking for everyone'),
                ]),
                div(classes: 'mt-4', [
                  h1(classes: 'text-6xl font-bold mb-6 text-white', [
                    .text('Simple solution to your financial problems'),
                  ]),
                  p(classes: 'text-4xl text-white', [
                    .text(
                      'with our secure online banking services, you can manage your finances from everywhere, at any time.',
                    ),
                  ]),
                ]),
                const AppButton(),
              ]),

              div([
                img(
                  src: '/images/mobile-app.png',
                  alt: 'OayPay Mobile App Interface',

                  width: 1000,
                  height: 800,
                ),
              ]),
            ]),
          ],
        ),
      ]),

      const OurServices(),
    ]);
  }
}
