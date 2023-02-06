import 'package:kwg_flutter/importer.dart';

class LogoutView extends HookConsumerWidget {
  const LogoutView({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text("Logout")),
      body: Container(),
    );
  }
}
