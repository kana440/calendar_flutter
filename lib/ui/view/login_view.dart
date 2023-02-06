import 'package:kwg_flutter/importer.dart';
import 'package:kwg_flutter/model/app_state.dart';
import 'package:kwg_flutter/repository/app_store.dart';

class LoginView extends HookConsumerWidget {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appState = ref.watch(appStoreProvider);
    final appStore = ref.watch(appStoreProvider.notifier);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text(
                'Welcome to KWG Portal',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.mail),
                  hintText: 'xxxx@xxxxx',
                  labelText: 'Email Address',
                ),
              ),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  icon: Icon(Icons.lock),
                  labelText: 'Password',
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {},
                child: const Text('ログイン'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlue,
                ),
              ),
              const SizedBox(height: 30),
              const Text('または'),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  appStore.setEnv(Enviromnment.demo);
                },
                child: const Text('デモを見る'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                ),
              ),
              Text(appState.env.toString()),
            ],
          ),
        ),
      ),
    );
  }
}
