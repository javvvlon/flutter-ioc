import 'package:http/http.dart' as http;

/// Types of the request.
///
/// Example: GET, POST ...
enum RequestType { GET, POST, PATCH, DELETE }

class Connector {
  final String baseUrl;

  final http.Client client = new http.Client();

  Connector(this.baseUrl);

  /// Make request to API
  Future<http.Response> call(
    RequestType method,
    String path, {
    Map<String, String>? headers,
    Map? body,
  }) {
    switch (method) {
      case RequestType.GET:
        return this.client.get(
              Uri.parse(baseUrl + '/' + path),
              headers: headers,
            );
      case RequestType.POST:
        return this.client.post(
              Uri.parse(
                baseUrl + '/' + path,
              ),
              headers: headers,
              body: body,
            );
      case RequestType.PATCH:
        return this.client.patch(
              Uri.parse(
                baseUrl + '/' + path,
              ),
              headers: headers,
              body: body,
            );
      case RequestType.DELETE:
        return this.client.delete(
              Uri.parse(
                baseUrl + '/' + path,
              ),
              headers: headers,
              body: body,
            );
    }
  }
}
