import 'package:app_task_management/app/utils/style/appColors.dart';
import 'package:flutter/material.dart';

class upcomingTask extends StatelessWidget {
  const upcomingTask({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Upcoming Task',
                style: TextStyle(
                  color: appColors.primaryText,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 20),
              SingleChildScrollView(
                child: SizedBox(
                  height: 160,
                  child: ListView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(10),
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: appColors.cardBg,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: const CircleAvatar(
                                    backgroundColor: Colors.amber,
                                    radius: 20,
                                    foregroundImage: NetworkImage(
                                        'https://th.bing.com/th/id/R.b8766cd53b5e1529712ed7e49365b7d4?rik=TsjlPG7zn3aD0w&riu=http%3a%2f%2fvignette2.wikia.nocookie.net%2fminions%2fimages%2fd%2fd5%2fKevin_Minion.jpg%2frevision%2flatest%3fcb%3d20150814124849%26path-prefix%3dde&ehk=wupXpg9U446Wa517LmNwMjETMELA31Kf3CqpfYJG1rc%3d&risl=&pid=ImgRaw&r=0'),
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: const CircleAvatar(
                                    backgroundColor: Colors.amber,
                                    radius: 20,
                                    foregroundImage: NetworkImage(
                                        'https://th.bing.com/th/id/R.b8766cd53b5e1529712ed7e49365b7d4?rik=TsjlPG7zn3aD0w&riu=http%3a%2f%2fvignette2.wikia.nocookie.net%2fminions%2fimages%2fd%2fd5%2fKevin_Minion.jpg%2frevision%2flatest%3fcb%3d20150814124849%26path-prefix%3dde&ehk=wupXpg9U446Wa517LmNwMjETMELA31Kf3CqpfYJG1rc%3d&risl=&pid=ImgRaw&r=0'),
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
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
                            const SizedBox(height:10),
                            Container(
                              height: 25,
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
                                  color: appColors.primaryText, fontSize: 20),
                            ),
                            const Text(
                              'Deadline 3 Hari lagi',
                              style: TextStyle(
                                  color: appColors.primaryText, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                  Container(
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(10),
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: appColors.cardBg,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: const CircleAvatar(
                                    backgroundColor: Colors.amber,
                                    radius: 20,
                                    foregroundImage: NetworkImage(
                                        'https://th.bing.com/th/id/R.b8766cd53b5e1529712ed7e49365b7d4?rik=TsjlPG7zn3aD0w&riu=http%3a%2f%2fvignette2.wikia.nocookie.net%2fminions%2fimages%2fd%2fd5%2fKevin_Minion.jpg%2frevision%2flatest%3fcb%3d20150814124849%26path-prefix%3dde&ehk=wupXpg9U446Wa517LmNwMjETMELA31Kf3CqpfYJG1rc%3d&risl=&pid=ImgRaw&r=0'),
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: const CircleAvatar(
                                    backgroundColor: Colors.amber,
                                    radius: 20,
                                    foregroundImage: NetworkImage(
                                        'https://th.bing.com/th/id/R.b8766cd53b5e1529712ed7e49365b7d4?rik=TsjlPG7zn3aD0w&riu=http%3a%2f%2fvignette2.wikia.nocookie.net%2fminions%2fimages%2fd%2fd5%2fKevin_Minion.jpg%2frevision%2flatest%3fcb%3d20150814124849%26path-prefix%3dde&ehk=wupXpg9U446Wa517LmNwMjETMELA31Kf3CqpfYJG1rc%3d&risl=&pid=ImgRaw&r=0'),
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
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
                            const SizedBox(height:10),
                            Container(
                              height: 25,
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
                                  color: appColors.primaryText, fontSize: 20),
                            ),
                            const Text(
                              'Deadline 3 Hari lagi',
                              style: TextStyle(
                                  color: appColors.primaryText, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  }
}
