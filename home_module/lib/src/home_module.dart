import 'package:dependency_module/dependency_module.dart';
import 'package:home_module/src/presenter/pages/home_page.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const HomePage()),
      ];
}
