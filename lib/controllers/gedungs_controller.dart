import 'dart:convert';
import 'package:get/get.dart';
import '../models/gedungs_model.dart';
import '../services/gedungs_service.dart';

class GedungsController extends GetxController {
  var gedungList = <ListGedung>[].obs;

  String idFakultas = '';

  @override
  void onInit() {
    idFakultas = Get.arguments as String;
    super.onInit();
    fetchGedung();
  }

  Future<void> fetchGedung() async {
    try {
      var response = await GedungsService().getGedungs(idFakultas);
      print(response.body);

      if (response.statusCode == 200) {
        List<dynamic> data = json.decode(response.body);
        gedungList
            .addAll(data.map((item) => ListGedung.fromJson(item)).toList());
      } else {
        Get.snackbar("Error", "Failed to fetch data from server");
      }
    } catch (e) {
      Get.snackbar("Error", e.toString());
    }
  }
}
