import 'package:http/http.dart';

class AppClient extends BaseClient {

  final Map<String, String> _interceptors = {};

  @override
  Future<StreamedResponse> send(BaseRequest request) {
    if (_interceptors.isNotEmpty) {
      request.headers.addAll(_interceptors);
    }
    return request.send();
  }

  void setInterceptor(Map<String, String> header) {
    _interceptors.addAll(header);
  }

  void reset() {
    _interceptors.clear();
  }
}
