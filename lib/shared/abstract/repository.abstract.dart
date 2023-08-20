import 'package:http/http.dart' as http;
import 'package:rel/shared/services/connector.service.dart';

/// Repository with API connector.
class Repository<Model> {
  final bool useAdapter = false;
  final Map<String, dynamic> adapterMap = {};

  final Connector connector =
      new Connector('https://jsonplaceholder.typicode.com');
}
