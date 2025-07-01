import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  LicenseRegistry.addLicense(() async* {
    final String license = await rootBundle.loadString(
      'fonts/OFL_Montserrat.txt',
    );
    yield LicenseEntryWithLineBreaks(<String>['montserrat'], license);
  });

  runApp(const Vision());
}

class Vision extends StatelessWidget {
  const Vision({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'VISION',
        theme: ThemeData(
          textTheme: const TextTheme(
            displaySmall: TextStyle(
              fontSize: 15,
              fontVariations: <FontVariation>[FontVariation('wght', 800)],
            ),
            displayMedium: TextStyle(
              fontVariations: <FontVariation>[FontVariation('wght', 800)],
            ),
            displayLarge: TextStyle(
              fontSize: 100,
              fontVariations: <FontVariation>[FontVariation('wght', 800)],
            ),
            headlineSmall: TextStyle(
              fontVariations: <FontVariation>[FontVariation('wght', 700)],
            ),
            headlineMedium: TextStyle(
              fontVariations: <FontVariation>[FontVariation('wght', 700)],
            ),
            headlineLarge: TextStyle(
              fontVariations: <FontVariation>[FontVariation('wght', 700)],
            ),
            titleSmall: TextStyle(
              fontVariations: <FontVariation>[FontVariation('wght', 600)],
            ),
            titleMedium: TextStyle(
              fontVariations: <FontVariation>[FontVariation('wght', 600)],
            ),
            titleLarge: TextStyle(
              fontVariations: <FontVariation>[FontVariation('wght', 600)],
            ),
            bodySmall: TextStyle(
              fontSize: 13,
              fontVariations: <FontVariation>[FontVariation('wght', 300)],
            ),
            bodyMedium: TextStyle(
              fontVariations: <FontVariation>[FontVariation('wght', 400)],
            ),
            bodyLarge: TextStyle(
              fontVariations: <FontVariation>[FontVariation('wght', 400)],
            ),
          ).apply(bodyColor: Colors.black, displayColor: Colors.black),
          colorScheme: const ColorScheme(
            primary: Colors.black,
            secondary: Colors.black,
            error: Colors.red,
            onSurface: Colors.black,
            surface: Colors.white,
            onError: Colors.black,
            onSecondary: Colors.black,
            onPrimary: Colors.black,
            brightness: Brightness.light,
          ),
          fontFamily: 'Montserrat',
        ),
        home: const Home(),
      );
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    HardwareKeyboard.instance.addHandler(_handleKeys);
  }

  @override
  void dispose() {
    HardwareKeyboard.instance.removeHandler(_handleKeys);
    super.dispose();
  }

  bool _handleKeys(KeyEvent event) {
    if (event.logicalKey == LogicalKeyboardKey.escape &&
        Navigator.canPop(context)) {
      Navigator.pop(context);
      return true;
    }

    return false;
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Stack(
          children: <Widget>[
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 2.0,
                children: <Widget>[
                  Image.asset(
                    'assets/tile.png',
                    width: 350,
                    height: 350,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(
                    width: 350,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Text>[
                        Text('© VISION by James Otto',
                            style: Theme.of(context).textTheme.bodySmall),
                        Text('coming soon',
                            style: Theme.of(context).textTheme.bodySmall),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                onTap: () => showLicensePage(context: context),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.info_outline,
                    size: 16,
                    color: Color(0xFF767676),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}
