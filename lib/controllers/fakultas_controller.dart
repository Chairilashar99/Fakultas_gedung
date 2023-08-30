import 'dart:convert';
import 'package:get/get.dart';
import 'package:flutter_test_fakultas/services/fakultas_service.dart';
import '../models/fakultas_model.dart';

class FakultasController extends GetxController {
  var fakultasList = <ListFakultas>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchFakultas();
  }

  Future<void> fetchFakultas() async {
    try {
      var response = await FakultasService().getFakultas();

      if (response.statusCode == 200) {
        List<dynamic> data = json.decode(response.body);
        fakultasList
            .addAll(data.map((item) => ListFakultas.fromJson(item)).toList());
      } else {
        Get.snackbar("Error", "Failed to fetch data from server");
      }
    } catch (e) {
      Get.snackbar("Error", e.toString());
    }
  }
}
