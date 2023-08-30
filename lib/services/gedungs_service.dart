import 'package:flutter_test_fakultas/services/basic_client.dart';
import 'package:http/http.dart' as http;
import '../constants/path.dart';

class GedungsService {
  static final http.Client _client = BasicClient();

  Future<http.Response> getGedungs(idFakultas) async {
    var uri = Uri.parse(getListGedungsPath + idFakultas);
    return await _client.get(uri);
  }
}
