import 'dart:html';

import 'package:app_task_management/app/routes/app_pages.dart';
import 'package:app_task_management/app/utils/style/appColors.dart';
import 'package:app_task_management/app/utils/widget/MyTask.dart';
import 'package:app_task_management/app/utils/widget/headers.dart';
import 'package:app_task_management/app/utils/widget/myFriends.dart';
import 'package:app_task_management/app/utils/widget/sidebar.dart';
import 'package:app_task_management/app/utils/widget/upcomingTask.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {

final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      drawer: const SideBar(),
      backgroundColor: appColors.primaryBg,
      body: SafeArea(
        child: Row(
          children: [
            !context.isPhone
                ? const Expanded(flex: 2, child: SideBar())
                : const SizedBox(),
            Expanded(
              flex: 15,
              child: Column(
                children: [
                  //Bagian Header
                  !context.isPhone
                      ? const Header()
                      : Container(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  _drawerKey.currentState!.openDrawer();
                                },
                                icon: const Icon(
                                  Icons.menu,
                                  color: appColors.primaryText,
                                ),
                              ),
                              const SizedBox(
                                width: 7,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Task Management',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: appColors.primaryText,
                                    ),
                                  ),
                                  Text(
                                    'Menjadi mudah dengan Task Management',
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: appColors.primaryText,
                                    ),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.notifications,
                                color: appColors.primaryText,
                                size: 25,
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: const CircleAvatar(
                                  backgroundColor: Colors.amber,
                                  radius: 25,
                                  foregroundImage: NetworkImage(
                                      'https://th.bing.com/th/id/R.b8766cd53b5e1529712ed7e49365b7d4?rik=TsjlPG7zn3aD0w&riu=http%3a%2f%2fvignette2.wikia.nocookie.net%2fminions%2fimages%2fd%2fd5%2fKevin_Minion.jpg%2frevision%2flatest%3fcb%3d20150814124849%26path-prefix%3dde&ehk=wupXpg9U446Wa517LmNwMjETMELA31Kf3CqpfYJG1rc%3d&risl=&pid=ImgRaw&r=0'),
                                ),
                              )
                            ],
                          ),
                        ),
                  // Bagian Isi
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
                        children: [
                          // start MY TASK
                          SizedBox(
                            
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'My Task',
                                  style: TextStyle(
                                    color: appColors.primaryText,
                                    fontSize: 30,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                // MY TASK
                                MyTask(),
                              ],
                            ),
                          ),
                          // end of MY TASK
                          ! context.isPhone 
                          ? Expanded(
                            child: Row(
                              children: const[
                                upcomingTask(),
                                myFriends()
                              ],
                            ),
                          )
                          : const upcomingTask(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

