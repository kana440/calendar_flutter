import 'package:go_router/go_router.dart';
import 'package:kwg_flutter/importer.dart';
import 'package:kwg_flutter/router/router.dart';
import 'package:kwg_flutter/ui/view/home_view.dart';

class App extends HookConsumerWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    final title = useState<String>('Flutter Demo');
    return MaterialApp.router(
      title: title.value,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
    );
  }
}
