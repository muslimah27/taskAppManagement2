import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Container(
        margin: EdgeInsets.all(Get.height * 0.1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.white
        ),
        child: Row(
          children: [
            !context.isPhone? 
            Expanded(
                child: Container(
                  padding: EdgeInsets.all(12),
             decoration: BoxDecoration(
               color: Colors.blue,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(50), bottomLeft: Radius.circular(50))
             ),
              
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("HI, UCIC-an", style: TextStyle(color: Colors.white, fontSize: 30),),
                  Text("Selamat Datang di E-learning", style: TextStyle(color: Colors.white, fontSize: 18),),
                  Text("Login Untuk Akses", style: TextStyle(color: Colors.white, fontSize: 18),),
                ],
              ),
            )
            ): const SizedBox(),
            Expanded(
                child: Container(
             decoration: BoxDecoration(
               color: Colors.white,
              borderRadius: BorderRadius.only(topRight: Radius.circular(50), bottomRight: Radius.circular(50))

             ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                
                  Image.asset("assets/image/login.png", height: 400,),
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, 'home');
                      },
                      child: Ink(
                        
                        child: Text("Sign Up Here",style: TextStyle(color: Colors.white, fontSize: 12 ),),
                      ),
                    ),
                  )
                  ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
