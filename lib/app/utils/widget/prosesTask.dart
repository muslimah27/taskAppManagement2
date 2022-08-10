import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:app_task_management/app/utils/style/appColors.dart';

import '../../data/controller/auth_controller.dart';


addEditTask({BuildContext? context, String? type, String? docId}) {
final authCon = Get.find<AuthController>();
  
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
            key: authCon.formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
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
                    controller: authCon.titleController,
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
                    controller: authCon.descriptionController,
                    maxLines: 4,
                    decoration: InputDecoration(
                      hintText: 'Deskripsi',
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
                DateTimePicker(
                    controller: authCon.dueDateController,
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
                          authCon.saveUpdateTask(
                            authCon.titleController.text,
                            authCon.descriptionController.text,
                            authCon.dueDateController.text,
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
