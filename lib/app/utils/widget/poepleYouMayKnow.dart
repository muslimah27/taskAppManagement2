import 'package:app_task_management/app/data/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
class peopleYouMayKnow extends StatelessWidget {
   final authCon = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        clipBehavior: Clip.antiAlias,
        itemCount: 8,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius:
                      BorderRadius.circular(50),
                  child: const Image(
                    image: NetworkImage(
                        'https://th.bing.com/th/id/OIP.LAsTdvNl0MnzSP3DKPvb1gHaEo?pid=ImgDet&w=683&h=427&rs=1'),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 35,
                  child: Text(
                    'Muslimah',
                    style: TextStyle(
                        color: Colors.white),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: SizedBox(
                    height: 30,
                    width: 30,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton
                          .styleFrom(
                        padding:
                            EdgeInsets.zero,
                        shape:
                            RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius
                                  .circular(40),
                        ),
                      ),
                      child: Icon(Icons
                          .add_circle_outline),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
