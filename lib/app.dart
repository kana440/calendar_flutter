import 'package:kwg_flutter/importer.dart';

class App extends HookConsumerWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final title = useState<String>('Flutter Demo');
    return MaterialApp(
      title: title.value,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text(title.value)),
        drawer: Drawer(
          child: ListView(padding: EdgeInsets.zero, children: const [
            // ignore: prefer_const_constructors
            DrawerHeader(
              child: Text(
                'Drawer Header',
              ),
            ),
            // ignore: prefer_const_constructors
            ListTile(leading: Icon(Icons.message), title: Text("menu1")),
            // ignore: prefer_const_constructors
            ListTile(
                // ignore: prefer_const_constructors
                leading: Icon(Icons.settings),
                title: Text("menu2")),
          ]),
        ),
        body: const Text("body"),
      ),
    );
  }
}
