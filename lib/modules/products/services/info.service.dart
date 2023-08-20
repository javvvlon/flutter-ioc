/// @author Javlon Khalimjonov
abstract class IInfoService {
  /// Shows info message.
  void showInfo();
}

/// Info service
///
/// @author Javlon Khalimjonov
class InfoService implements IInfoService {
  @override
  void showInfo() {
    print("IoC container's first service");
  }
}
