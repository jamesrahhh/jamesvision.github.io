import 'package:jaspr/jaspr.dart';

import '../view/home/home.dart';

@client
class App extends StatefulComponent {
  const App({super.key});

  @override
  State<App> createState() => AppState();
}

class AppState extends State<App> {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield const Home();
  }
}
