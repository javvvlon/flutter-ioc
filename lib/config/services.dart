import 'package:get_it/get_it.dart';
import 'package:rel/config/modules.dart';

final container = GetIt.instance;

/// Binds services from individual modules.
///
/// Here you register shared services.
void registerAllServices() {
  modules.forEach((module) {
    module.registerServices();
  });
}
