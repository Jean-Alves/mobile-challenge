import 'package:flutter_modular/flutter_modular.dart';
import 'package:poccash/app/shared/repositories/clinic_repository.dart';
import '../home/home_store.dart';

import 'home_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ClinicRepository(
          i(),
        )),
    Bind.lazySingleton((i) => HomeStore(
          i(),
          i(),
        )),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => const HomePage()),
  ];
}