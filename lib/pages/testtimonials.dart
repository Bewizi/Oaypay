import "package:jaspr/dom.dart";
import "package:jaspr/jaspr.dart";
import "package:oaypay/components/conatiner.dart";

class Testtimonials extends StatelessComponent {
  const Testtimonials({super.key});

  @override
  Component build(BuildContext context) {
    return section(classes: 'py-20 bg-evergreen-900', [
      AppConatiner(
        children: [
          section(classes: 'flex flex-col items-center justify-center', [
            h6(classes: 'uppercase text-lime-cream-300 mb-4 text-xl  font-medium }', [
              .text('our testimonials?'),
            ]),
            h2(classes: 'mb-5 text-white text-4xl md:text-6xl font-medium md:w-3/4 text-center', [
              .text('Hear what the millions people say about us'),
            ]),
            p(classes: ' text-lg md:text-2xl text-white/80 font-regular text-center md:w-4/5', [
              .text(
                'Here are some reviews from some of our esteemed customers',
              ),
            ]),
          ]),

          section(classes: "flex flex-col md:flex-row gap-8 mt-20", [
            testimonialCard(
              'Noheem Nysc',
              'noheem_nysc.png',
              'OAYPAY has revolutionized the way I manage my finances. With their intuitive platform, I can easily track my expenses, make payments, and even plan for investments. It\'s like having a financial advisor right at my fingertips.',
            ),
            testimonialCard(
              'Bello Samuel',
              'bello_samuel.png',
              'As a student, I needed a banking solution that matched my on-the-go lifestyle. OAYPAY was a game-changer. I can check my account balance, pay my bills, and send money to friends instantly. It\'s hassle-free and perfect for my busy schedule.',
            ),
            testimonialCard(
              'Akinola Jubril',
              'akinola_jubril.png',
              'Running my small business was made easier with OAYPAY. Their zero-access banking allowed me to manage my company\'s finances online, even without a physical branch. It\'s efficient, secure, and tailored to my business needs.',
            ),
          ]),
        ],
      ),
    ]);
  }
}

Component testimonialCard(String name, String image, String review) {
  return div(classes: 'px-6 py-8 bg-pine-teal-800 rounded-3xl w-full overflow-hidden', [
    p(classes: 'text-xl md:text-2xl font-regular text-white/90', [.text(review)]),
    div(classes: 'flex items-center gap-4 mt-4', [
      img(src: '/images/$image', alt: name, classes: 'w-16 h-16 rounded-full'),
      div([
        h3(classes: 'text-xl font-medium text-white', [.text(name)]),
      ]),
    ]),
  ]);
}
