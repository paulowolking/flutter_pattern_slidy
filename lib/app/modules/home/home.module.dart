import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pattern_slidy/app/modules/home/pages/home/home_controller.dart';
import 'package:flutter_pattern_slidy/app/modules/home/pages/home/home_page.dart';
import 'package:flutter_pattern_slidy/app/modules/home/pages/other/other_page.dart';
import 'package:flutter_pattern_slidy/app/modules/home/repositories/poke_repository.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController(i.get())),
        Bind((i) => PokeRepository(i.get())),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => HomePage()),
        ModularRouter('/other', child: (_, args) => OtherPage())
      ];
}
