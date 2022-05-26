import 'package:dependency_module/dependency_module.dart';
import 'package:home_module/src/presenter/pages/pet_detail_page.dart';
import 'package:home_module/src/presenter/pages/pet_home_page.dart';
import 'package:home_module/src/presenter/pages/pet_menu_page.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.singleton((i) => AnimValue()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const PetMenuPage()),
        ChildRoute('/home', child: (context, args) => const PetHomePage()),
        ChildRoute('/detail', child: (context, args) => const PetDetailPage()),
      ];
}
