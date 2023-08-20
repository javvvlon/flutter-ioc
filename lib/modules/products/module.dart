import 'package:rel/config/services.dart';

import '../../shared/abstract/module.abstract.dart';

import './services/info.service.dart';

class ProductModule extends AppModule {
  @override
  void registerServices() {
    container.registerFactory(() => InfoService());
  }
}
