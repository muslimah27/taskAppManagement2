
import 'package:app_task_management/app/utils/style/appColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilWidget extends StatelessWidget {
  const ProfilWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ! context.isPhone ? Row(
      children: [
        Expanded(
          flex: 1,
          child: 
          ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: const CircleAvatar(
          backgroundColor: Colors.amber, 
          radius: 150,
          foregroundImage: NetworkImage(
           "https://yt3.ggpht.com/a/AATXAJyUEgqkrx-_Vhz-cpHNMfONR22tfRaCScNzyg=s900-c-k-c0xffffffff-no-rj-mo"),
         ),                              
       ),
      ),
       //SizedBox(width: 20,

      Expanded(
        flex: 2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
                'Muslimahhh cute',
                  style: TextStyle(
                  color: appColors.primaryText,
                  fontSize: 35,
                 ),
              ),
            Text(
                'Muslimahhh2703@gmail.com',
                  style: TextStyle(
                  color: appColors.primaryText,
                  fontSize: 15,
                 ),
              ),
          ],
        ),
      ),
      ],
  ): Center(
    child: Column(
        children: [
          ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: const CircleAvatar(
          backgroundColor: Colors.amber, 
          radius: 110,
          foregroundImage: NetworkImage(
           "https://th.bing.com/th/id/OIP.LAsTdvNl0MnzSP3DKPvb1gHaEo?pid=ImgDet&w=683&h=427&rs=1"),
           ),                              
         ),
         SizedBox(height: 20,),

        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                  'Muslimahhh cute',
                    style: TextStyle(
                    color: appColors.primaryText,
                    fontSize: 35,
                   ),
                ),
              Text(
                  'Muslimahhh2703@gmail.com',
                    style: TextStyle(
                    color: appColors.primaryText,
                    fontSize: 15,
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