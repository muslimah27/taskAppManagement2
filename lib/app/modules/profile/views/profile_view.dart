import 'package:app_task_management/app/utils/widget/MyTask.dart';
import 'package:app_task_management/app/utils/widget/ProfilWidget.dart';
import 'package:app_task_management/app/utils/widget/poepleYouMayKnow.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:app_task_management/app/routes/app_pages.dart';
import 'package:app_task_management/app/utils/style/appColors.dart';
import 'package:app_task_management/app/utils/widget/headers.dart';
import 'package:app_task_management/app/utils/widget/sidebar.dart';

import '../../../data/controller/auth_controller.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
final authCon = Get.find<AuthController>();
final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key:_drawerKey,
      drawer: const SizedBox(width: 150, child: SideBar()),
      backgroundColor: appColors.primaryBg,
      body: SafeArea(
        child: Row(
          children: [
           !context.isPhone 
           ? const Expanded( 
              flex: 2,
              child: const SideBar(), 
              )
            : const SizedBox(),
      
           Expanded(
              flex: 15,
              child: Column(
                children: [
                  !context.isPhone 
                  ? const Header()
                  : Container(
                    padding: EdgeInsets.all(20),
                    child: Row(
                    children: [IconButton(onPressed: () {
                      _drawerKey.currentState!.openDrawer();
                    }, 
                    icon: Icon(Icons.menu, 
                    color: appColors.primaryText)
              ),
      
               const SizedBox(
                width: 15, 
             ),
                Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Task Management',
                    style: TextStyle(fontSize: 20, color: appColors.primaryText),
                  ),
                  Text('Menjadi mudah dengan Task Management',
                      style: TextStyle(fontSize: 14, color: appColors.primaryText)
                  )
                ],
              ),
              const Spacer(),
              
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
                        onPressed: () => authCon.logout(),
                        child: const Text('Ya')),
                  );
                },
                child: Row(
                  children: const [
                    Text('Log Out',
                        style: TextStyle(fontSize: 15, color: appColors.primaryText)),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.logout,
                      color: appColors.primaryText,
                      size: 20,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
              //content / isipage /screen
                  Expanded(
                    child: Container(
                      padding: !context.isPhone
                          ? const EdgeInsets.all(30)
                          : const EdgeInsets.all(10),
                      margin:
                          !context.isPhone ? const EdgeInsets.all(10) : null,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: !context.isPhone
                          ? BorderRadius.circular(50)
                          : BorderRadius.circular(30)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                      ProfilWidget(),
                        Text(
                            'People You May Now',
                              style: TextStyle(
                              color: appColors.primaryText,
                              fontSize: 15,
                             ),
                          ),
                        SizedBox(
                              height: 5,
                            ),
                        SizedBox(
                          height: 200,
                          child: peopleYouMayKnow(),
                        ),

                      ],),
                  ),
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

