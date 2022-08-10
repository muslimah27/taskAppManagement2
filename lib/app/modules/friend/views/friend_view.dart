

import 'package:app_task_management/app/data/controller/auth_controller.dart';
import 'package:app_task_management/app/utils/widget/myFriends.dart';
import 'package:app_task_management/app/utils/widget/poepleYouMayKnow.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:app_task_management/app/routes/app_pages.dart';
import 'package:app_task_management/app/utils/style/appColors.dart';
import 'package:app_task_management/app/utils/widget/headers.dart';
import 'package:app_task_management/app/utils/widget/sidebar.dart';

import '../controllers/friend_controller.dart';

class FriendView extends GetView<FriendController> {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  //variable
  final authCon = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
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
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      IconButton(
                                          onPressed: () {
                                            _drawerKey.currentState!
                                                .openDrawer();
                                          },
                                          icon: Icon(Icons.menu,
                                              color: appColors.primaryText)),
                                      const SizedBox(
                                        width: 7,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            'Task Management',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: appColors.primaryText),
                                          ),
                                          Text(
                                              'Menjadi mudah dengan Task Management',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: appColors.primaryText))
                                        ],
                                      ),
                                      const Spacer(),
                                      const Icon(
                                        Icons.notifications,
                                        color: appColors.primaryText,
                                        size: 30,
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
                                              "https://yt3.ggpht.com/a/AATXAJyUEgqkrx-_Vhz-cpHNMfONR22tfRaCScNzyg=s900-c-k-c0xffffffff-no-rj-mo"),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  // inputan serach
                                  context.isPhone
                                      ? TextField(
                                          //akasi
                                          onChanged: (value) =>
                                              authCon.searchFriends(value),
                                          controller:
                                              authCon.searchFriendsController,
                                          decoration: InputDecoration(
                                            filled: true,
                                            fillColor: Colors.white,
                                            contentPadding:
                                                const EdgeInsets.only(
                                                    left: 40, right: 10),
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                borderSide: const BorderSide(
                                                    color: Colors.white)),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              borderSide: const BorderSide(
                                                  color: Colors.blue),
                                            ),
                                            prefixIcon:
                                                const Icon(Icons.search),
                                            hintText: 'Cari Disini',
                                          ),
                                        )
                                      : const SizedBox(),
                                ],
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
                      child: Obx(
                        () => authCon.hasilPencarian.isEmpty
                            ? Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    const Text(
                                      'People You May Know',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: appColors.primaryText,
                                      ),
                                    ),
                                    peopleYouMayKnow(),
                                    myFriends(),
                                  ])
                            : ListView.builder(
                                padding: EdgeInsets.all(5),
                                shrinkWrap: true,
                                itemCount: authCon.hasilPencarian.length,
                                itemBuilder: (context, index) => ListTile(
                                  onTap: () => authCon.addFriends(
                                      authCon.hasilPencarian[index]['email']),
                                  leading: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image(
                                      image: NetworkImage(
                                        authCon.hasilPencarian[index]['photo']),
                                    ),
                                  ),
                                  title: Text(
                                      authCon.hasilPencarian[index]['name']),
                                  subtitle: Text(
                                      authCon.hasilPencarian[index]['email']),
                                  trailing: Icon(Icons.add),
                                ),
                              ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
