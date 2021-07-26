import 'package:flutter/material.dart';
import 'package:flutter_clean_instagram/app/controller/auth_controller.dart';
import 'package:flutter_clean_instagram/app/ui/android/detail/select_page.dart';
import 'package:get/get.dart';

class WriteBottomSheet {
  static void writeBottomSheet(BuildContext context) {
    showModalBottomSheet(
      useRootNavigator: true,
      context: context,
      builder: (context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.3,
          color: Colors.transparent,
          child: Container(
            padding: const EdgeInsets.only(top: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Container(
                  height: 5,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey[400],
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.photo_album_outlined),
                  title: Align(
                    child: Text("갤러리"),
                    alignment: Alignment(-1.2, 0),
                  ),
                  onTap: () {
                    Get.to(() => SelectPage());
                  },
                ),
                ListTile(
                  leading: Icon(Icons.camera_alt_outlined),
                  title: Align(
                    child: Text("카메라"),
                    alignment: Alignment(-1.2, 0),
                  ),
                  onTap: () {},
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
