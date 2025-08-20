import 'package:jaspr/jaspr.dart';

class Home extends StatelessComponent {
  const Home({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'seized', <Component>[
      h1(<Component>[text('sashenka says hi')]),
    ]);
  }

  @css
  static List<StyleRule> get styles => <StyleRule>[
        css('.seized', <StyleRule>[
          css('&').styles(
            backgroundPosition: const BackgroundPosition(
              alignX: BackgroundAlignX.center,
              alignY: BackgroundAlignY.center,
            ),
            height: const Unit.vh(100),
            width: const Unit.vw(100),
            backgroundRepeat: BackgroundRepeat.noRepeat,
            backgroundImage: const ImageStyle.url('images/seized.png'),
            backgroundSize: BackgroundSize.contain,
            position: const Position.fixed(),
            display: Display.flex,
            justifyContent: JustifyContent.center,
            alignItems: AlignItems.center,
          ),
          css('h1').styles(
            color: Colors.transparent,
            textAlign: TextAlign.center,
            fontSize: const Unit.vw(3),
            margin: const Spacing.only(bottom: Unit.percent(30)),
          ),
        ]),
      ];
}
