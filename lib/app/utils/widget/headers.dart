
import 'package:app_task_management/app/utils/style/appColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../routes/app_pages.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.2,
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 30, top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Task Management',
                  style: TextStyle(fontSize: 20, color: appColors.primaryText),
                ),
                Text('Menjadi mudah dengan Task Management',
                    style: TextStyle(fontSize: 15, color: appColors.primaryText))
              ],
            ),
            const Spacer(
              flex: 1,
            ),
            Expanded(
                child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.only(left: 40, right: 10),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.white)),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Colors.blue),
                ),
                prefixIcon: const Icon(Icons.search),
                hintText: 'Cari Disini',
              ),
            )),
            const SizedBox(
              width: 20,
            ),
            const Icon(Icons.notifications, color: appColors.primaryText),
            const SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: () {
                Get.defaultDialog(
                  title: 'Log Out',
                  content: const Text('Apakah yakin akan keluar?'),
                  cancel: ElevatedButton(
                    onPressed: () => Get.back(),
                    child: const Text('Batal'),
                  ),
                  confirm: ElevatedButton(
                      onPressed: () => Get.toNamed(Routes.LOGIN),
                      child: const Text('Ya')),
                );
              },
              child: Row(
                children: const [
                  Text('Log out',
                      style: TextStyle(fontSize: 18, color: appColors.primaryText)),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.logout,
                    color: appColors.primaryText,
                    size: 30,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}