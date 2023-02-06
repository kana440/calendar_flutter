import 'package:kwg_flutter/importer.dart';
import 'package:go_router/go_router.dart';

GoRouter useRouter() {
  final context = useContext();
  return GoRouter.of(context);
}
