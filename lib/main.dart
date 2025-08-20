import 'package:jaspr/server.dart';

import 'app/app.dart';
import 'jaspr_options.dart';

void main() {
  Jaspr.initializeApp(
    options: defaultJasprOptions,
  );

  runApp(
    Document(
      title: 'VISION',
      styles: <StyleRule>[
        css.import('https://fonts.googleapis.com/css?family=Roboto'),
        css('html, body').styles(
          backgroundColor: Colors.black,
          margin: const Spacing.all(Unit.pixels(0)),
          fontFamily:
              const FontFamily.list(<FontFamily>[FontFamily('Roboto'), FontFamilies.sansSerif]),
        ),
      ],
      body: const App(),
    ),
  );
}
