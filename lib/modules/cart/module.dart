import 'package:rel/modules/cart/repositories/users.dart';

import '../../config/services.dart';
import '../../shared/abstract/module.abstract.dart';

import './services/cart.service.dart';

class CartModule extends AppModule {
  @override
  void registerServices() {
    container.registerFactory(() => CartService());
    container.registerFactory(() => UsersRepository());
  }
}
