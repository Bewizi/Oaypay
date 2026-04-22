import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:oaypay/components/conatiner.dart';

class Navbar extends StatelessComponent {
  const Navbar({super.key});

  @override
  Component build(BuildContext context) {
    // sync* is common in Jaspr for lists
    return section(classes: 'bg-linear-to-r from-dark-slate-grey-800 to-jungle-teal-600 boreder', [
      AppConatiner(
        children: [
          div(classes: 'flex items-center  py-6 h text-white', [
            h1(classes: 'text-3xl font-bold uppercase', [
              .text('oaypay'),
            ]),
            nav(classes: 'ml-14 hidden lg:block', [
              ul(classes: 'flex gap-10 items-center', [
                li([
                  a(href: '/', [.text('Home')]),
                ]),
                li([
                  a(href: '/features', [.text('Features')]),
                ]),
                li([
                  a(href: '/about', [.text('About')]),
                ]),
                li([
                  a(href: '/testimonials', [.text('Testimonials')]),
                ]),
                li([
                  a(href: '/faqs', [.text('FAQs')]),
                ]),
              ]),
            ]),
          ]),
        ],
      ),
    ]);
  }
}
