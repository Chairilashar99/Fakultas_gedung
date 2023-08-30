import 'package:flutter_test_fakultas/services/basic_client.dart';
import 'package:http/http.dart' as http;
import '../constants/path.dart';

class FakultasService {
  static final http.Client _client = BasicClient();

  Future<http.Response> getFakultas() async {
    var uri = Uri.parse(getListFakultasPath);
    return await _client.get(uri);
  }
}
