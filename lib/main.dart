import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(const ProviderScope(
    child: MyApp(),
  ));
}

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final title = useState<String>('Flutter Demo');
    return MaterialApp(
      title: title.value,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage('Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends HookConsumerWidget {
  final String title;
  const MyHomePage(this.title, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = useState<int>(0);

    void incrementCounter() {
      counter.value++;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${counter.value}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
