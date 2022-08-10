import 'package:app_task_management/app/data/controller/auth_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TaskController extends GetxController {
  //TODO: Implement TaskController
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  FirebaseAuth auth = FirebaseAuth.instance;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  UserCredential? _userCredential;
  //serach data m
  late TextEditingController titleController,
      descriptionController,
      dueDateController;

  final authCon = Get.find<AuthController>();

  final count = 0.obs;
  @override
  void onInit() {
    titleController = TextEditingController();
    descriptionController = TextEditingController();
    dueDateController = TextEditingController();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    titleController.dispose();
    descriptionController.dispose();
    dueDateController.dispose();
    super.onClose();
  }

  void increment() => count.value++;

  void saveUpdateTask(
      String? title,
      String? description,
      String? duDate,
      String? docId,
      String? type) async {
        print(title);
        print(description);
        print(duDate);
        print(docId);
        print(type);


    final isValid = formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    formKey.currentState!.save();
    CollectionReference taskColl = firestore.collection('task');
    CollectionReference userColl = firestore.collection('users');
    var taskId = DateTime.now().toIso8601String();
    if (type == 'Add') {
      await taskColl.doc(taskId).set({
        'title': title,
        'description': description,
        'due_date': duDate,
        'status': '0',
        'total_task': '0',
        'total_task_finished': '0',
        'task_detail': [],
        'asign_to': [authCon.auth.currentUser!.email],
        'created_by': authCon.auth.currentUser!.email,
      }).whenComplete(() async {
        await userColl.doc(authCon.auth.currentUser!.email).set({
          'task_id': FieldValue.arrayUnion([taskId])
        }, SetOptions(merge: true));
        Get.back();
        Get.snackbar('Task', 'successfuly $type');
      }).catchError((error) {
        Get.snackbar('Task', 'Error $type');
      });
    } else {
      await taskColl.doc(docId).update({
        'title': title,
        'description': description,
        'due_date': duDate,
      }).whenComplete(() async {
        await userColl.doc(authCon.auth.currentUser!.email).set({
          'task_id': FieldValue.arrayUnion([taskId])
        }, SetOptions(merge: true));
        Get.back();
        // $type = status add atau edit
        Get.snackbar('Task', 'successfuly $type');
      }).catchError((error) {
        Get.snackbar('Task', 'Error $type');
      });
    }
  }
}
