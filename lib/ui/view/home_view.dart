import 'package:kwg_flutter/importer.dart';

class HomeView extends HookConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text("ss")),
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
    );
  }
}
