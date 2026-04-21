import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:oaypay/components/conatiner.dart';
import 'package:oaypay/components/main_headers.dart';

class HowItWorks extends StatelessComponent {
  const HowItWorks({super.key});

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
        ],
      ),
    ]);
  }
}
