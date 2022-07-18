import 'package:app_task_management/app/utils/style/appColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';

import '../../routes/app_pages.dart';

class myFriends extends StatelessWidget {
  const myFriends({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'My Friends',
                    style: TextStyle(
                      color: appColors.primaryText,
                      fontSize: 20,
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () => Get.toNamed(Routes.FRIEND),
                    child: Text(
                    'more',
                    style: TextStyle(
                      color: appColors.primaryText,
                      fontSize: 15,
                    ),
                  ),
                ),
                  Icon(
                    Icons.chevron_right_rounded,
                    color: appColors.primaryText,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 300,
                child: GridView.builder(
                shrinkWrap: true,
                itemCount: 6,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: context.isPhone ? 2 : 3, 
                    crossAxisSpacing: 20, 
                    mainAxisSpacing: 20),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ClipRRect(
                          borderRadius:
                              BorderRadius.circular(90),
                          child: const CircleAvatar(
                            backgroundColor:
                                Colors.amber,
                            radius: 60,
                            foregroundImage: NetworkImage(
                                'https://cf.shopee.co.id/file/c494c831ed1c7294ecd2db66e7dab4ac'),
                          ),
                        ),
                        Text(
                          'Muslimah Cute', 
                          style: TextStyle(
                            color: appColors.primaryText
                          ),
                        ),
                      ],
                    );
                })
              )
            ],
          ),
        ),
      ),
    );
  }
}
