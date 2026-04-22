import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:oaypay/components/app_button.dart';
import 'package:oaypay/components/conatiner.dart';

class Cta extends StatelessComponent {
  const Cta({super.key});

  @override
  build(BuildContext context) {
    return section(classes: 'py-20', [
      AppConatiner(
        children: [
          section(classes: 'flex flex-col items-center justify-center', [
            h2(classes: 'mb-5 text-evergreen-900  text-4xl md:text-6xl font-bold md:w-3/4 text-center', [
              .text('Move Your Money Freely'),
            ]),
            p(classes: ' text-lg md:text-2xl text-charcoal-blue-700 font-regular text-center md:w-4/5', [
              .text(
                'Send, Receive and Save money with zero troubles, any day!, anytime! it takes less than 5minutes.',
              ),
            ]),
            const AppButton(),
          ]),
        ],
      ),
    ]);
  }
}
