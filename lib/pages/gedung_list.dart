import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/gedungs_controller.dart';

class GedungList extends StatelessWidget {
  const GedungList({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(GedungsController());

    //Widget header
    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        title: Text('List Gedung'),
      );
    }

    //List Gedung
    Widget listGedung() {
      return Obx(
        () => ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: controller.gedungList.length,
          itemBuilder: (context, index) {
            var gedung = controller.gedungList[index];
            return ListTile(
              title: Text(gedung.namaGedung ?? ''),
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
                  listGedung(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
