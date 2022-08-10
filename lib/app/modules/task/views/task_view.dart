import 'package:app_task_management/app/data/controller/auth_controller.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:app_task_management/app/routes/app_pages.dart';
import 'package:app_task_management/app/utils/style/appColors.dart';
import 'package:app_task_management/app/utils/widget/headers.dart';
import 'package:app_task_management/app/utils/widget/sidebar.dart';

import '../controllers/task_controller.dart';

class TaskView extends GetView<TaskController> {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
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
                            child: Row(
                              children: [
                                IconButton(
                                    onPressed: () {
                                      _drawerKey.currentState!.openDrawer();
                                    },
                                    icon: const Icon(Icons.menu,
                                        color: appColors.primaryText)),
                                const SizedBox(
                                  width: 15,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Task Management',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: appColors.primaryText),
                                    ),
                                    Text('Menjadi mudah dengan Task Management',
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'My Task',
                              style: TextStyle(
                                color: appColors.primaryText,
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(height: 20),
                            Expanded(
                              child: ListView.builder(
                                itemCount: 8,
                                clipBehavior: Clip.antiAlias,
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    //edit
                                    onLongPress : (){
                                      
                                      addEditTask(context: context, type: 'Update', docId: '2022-08-10T23:44:35.645');
                                     
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.all(10),
                                      padding: const EdgeInsets.all(15),
                                      height: 150,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: appColors.cardBg,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                                child: const CircleAvatar(
                                                  backgroundColor: Colors.amber,
                                                  radius: 20,
                                                  foregroundImage: NetworkImage(
                                                      'https://th.bing.com/th/id/R.b8766cd53b5e1529712ed7e49365b7d4?rik=TsjlPG7zn3aD0w&riu=http%3a%2f%2fvignette2.wikia.nocookie.net%2fminions%2fimages%2fd%2fd5%2fKevin_Minion.jpg%2frevision%2flatest%3fcb%3d20150814124849%26path-prefix%3dde&ehk=wupXpg9U446Wa517LmNwMjETMELA31Kf3CqpfYJG1rc%3d&risl=&pid=ImgRaw&r=0'),
                                                ),
                                              ),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                                child: const CircleAvatar(
                                                  backgroundColor: Colors.amber,
                                                  radius: 20,
                                                  foregroundImage: NetworkImage(
                                                      'https://th.bing.com/th/id/R.b8766cd53b5e1529712ed7e49365b7d4?rik=TsjlPG7zn3aD0w&riu=http%3a%2f%2fvignette2.wikia.nocookie.net%2fminions%2fimages%2fd%2fd5%2fKevin_Minion.jpg%2frevision%2flatest%3fcb%3d20150814124849%26path-prefix%3dde&ehk=wupXpg9U446Wa517LmNwMjETMELA31Kf3CqpfYJG1rc%3d&risl=&pid=ImgRaw&r=0'),
                                                ),
                                              ),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                                child: const CircleAvatar(
                                                  backgroundColor: Colors.amber,
                                                  radius: 20,
                                                  foregroundImage: NetworkImage(
                                                      'https://th.bing.com/th/id/R.b8766cd53b5e1529712ed7e49365b7d4?rik=TsjlPG7zn3aD0w&riu=http%3a%2f%2fvignette2.wikia.nocookie.net%2fminions%2fimages%2fd%2fd5%2fKevin_Minion.jpg%2frevision%2flatest%3fcb%3d20150814124849%26path-prefix%3dde&ehk=wupXpg9U446Wa517LmNwMjETMELA31Kf3CqpfYJG1rc%3d&risl=&pid=ImgRaw&r=0'),
                                                ),
                                              ),
                                              const Spacer(),
                                              Container(
                                                height: 25,
                                                width: 80,
                                                color: appColors.primaryBg,
                                                child: const Center(
                                                    child: Text(
                                                  '100%',
                                                  style: TextStyle(
                                                    color: appColors.primaryText,
                                                  ),
                                                )),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 10),
                                          Container(
                                            height: 20,
                                            width: 80,
                                            color: appColors.primaryBg,
                                            child: const Center(
                                                child: Text(
                                              '10/10 Task',
                                              style: TextStyle(
                                                color: appColors.primaryText,
                                              ),
                                            )),
                                          ),
                                          const Text(
                                            'Pemrograman Mobile - Flutter',
                                            style: TextStyle(
                                                color: appColors.primaryText,
                                                fontSize: 20),
                                          ),
                                          const Text(
                                            'Deadline 3 Hari lagi',
                                            style: TextStyle(
                                                color: appColors.primaryText,
                                                fontSize: 15),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
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
        floatingActionButton: Align(
          alignment: const Alignment(0.95, 0.95),
          child: FloatingActionButton.extended(
            onPressed: () {
              //parameter

              addEditTask(context: context, type: 'Add', docId: '');
            },
            label: const Text("Tambah Task"),
            icon: const Icon(Icons.add),
          ),
        ));
  }

  addEditTask({BuildContext? context, String? type, String? docId}) {
    Get.bottomSheet(
      SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 10, right: 10, left: 10),
          margin: context!.isPhone
              ? EdgeInsets.zero
              : const EdgeInsets.only(left: 150, right: 150),
          height: Get.height,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            color: Colors.white,
          ),
          child: Form(
            key: controller.formKey,
            autovalidateMode :AutovalidateMode.onUserInteraction,
              child: Column(
            children: [
              Text(
                '$type Task',
                style: TextStyle(
                    color: appColors.primaryText,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              TextFormField(
                  controller: controller.titleController,
                  decoration: InputDecoration(
                    hintText: 'title',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Cannot be Empty';
                    }
                    return null;
                  }),
              SizedBox(
                height: 12,
              ),
              TextFormField(
                  controller: controller.descriptionController,
                  maxLines: 4,
                  decoration: InputDecoration(
                    hintText: 'Deskripsi',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty ) {
                      return 'Cannot be Empty';
                    }
                    return null;
                  }),
              SizedBox(
                height: 12,
              ),
              DateTimePicker(
                  controller: controller.dueDateController,
                  firstDate: DateTime.now(),
                  lastDate: DateTime(2100),
                  dateLabelText: 'Due Date',
                  decoration: InputDecoration(
                    hintText: 'Due Date',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Cannot be Empty';
                    }
                    return null;
                  }),
              SizedBox(
                height: 12,
              ),
              ConstrainedBox(
                  constraints:
                      BoxConstraints.tightFor(width: Get.width, height: 40),
                  child: ElevatedButton(
                      onPressed: () {
                        controller.saveUpdateTask(
                          controller.titleController.text,
                          controller.descriptionController.text,
                          controller.dueDateController.text,
                          docId!,
                          type!,

                        );
                      },
                      child: Text(type!))),
              SizedBox(
                height: 12,
              ),
            ],
          )),
        ),
      ),
    );
  }
}
