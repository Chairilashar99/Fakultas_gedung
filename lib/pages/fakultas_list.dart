import 'package:flutter/material.dart';
import 'package:flutter_test_fakultas/controllers/fakultas_controller.dart';
import 'package:get/get.dart';

import '../controllers/gedungs_controller.dart';

class FakultasList extends StatelessWidget {
  const FakultasList({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(FakultasController());
    //Widget header
    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        title: Text('List Fakultas'),
      );
    }

    //List Fakultas
    Widget listFakultas() {
      return Obx(
        () => ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: controller.fakultasList.length,
          itemBuilder: (context, index) {
            var fakultas = controller.fakultasList[index];
            return InkWell(
              onTap: () {
                Get.toNamed("/gedung-list", arguments: fakultas.id.toString())
                    ?.then((value) {
                  Get.delete<GedungsController>();
                });
              },
              child: ListTile(
                title: Text(fakultas.namaResmi ?? ''),
                subtitle: Text(fakultas.namaSingkat ?? ''),
              ),
            );
          },
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: header(),
      body: SafeArea(
        child: Container(
          child: ListView(
            children: [
              Column(
                children: [
                  listFakultas(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
