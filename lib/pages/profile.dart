import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      CupertinoIcons.lock,
                      color: Colors.black,
                    )),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/instagram1.png',
                      width: 25,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.sort))
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Kaium Al Limon',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          const Text(
                            'lemonn.exe',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 7, vertical: 3),
                            decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(20)),
                            child: Text('threads.net'),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'imposter!',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Row(
                            children: List.generate(
                                2,
                                (index) => Transform.translate(
                                    offset: Offset(-index * 15, 0),
                                    child: Container(
                                      width: 25,
                                      height: 25,
                                      child: CircleAvatar(
                                        backgroundImage: AssetImage(
                                            'assets/images/woman${index + 4}.jpg'),
                                      ),
                                    ))),
                          ),
                          const Text(
                            '37 followers',
                            style: TextStyle(fontSize: 13),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 3,
                            width: 3,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.black),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            // color: Colors.red,
                            // height: 10,
                            width: 100,
                            child: const Text(
                              overflow: TextOverflow.ellipsis,
                              'facebook.com/multipus.fb',
                              maxLines: 1,
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 70,
                  height: 70,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/limon.jpg'),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: const BorderSide(
                                  color: Colors.black, width: 1))),
                      child: const Text(
                        'Edit profile',
                        style: TextStyle(fontSize: 13, color: Colors.black),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: const BorderSide(
                                  color: Colors.black, width: 1))),
                      child: const Text(
                        'Share profile',
                        style: TextStyle(fontSize: 13, color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: const Text('Threads'))),
                Expanded(
                    child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: const Text('Replies'))),
                Expanded(
                    child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: const Text('Reposts'))),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Stack(
              children: [
                Container(
                  color: Colors.grey.shade400,
                  height: 1,
                  width: MediaQuery.of(context).size.width,
                ),
                Container(
                  width: 120,
                  color: Colors.black,
                  height: 2,
                )
              ],
            ),
            const SizedBox(
              height: 2,
            ),
            Expanded(
                child: Center(
              child: SizedBox(
                width: 185,
                height: 35,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(color: Colors.grey, width: 1))),
                  child: const Text(
                    'Start your first thread',
                    style: TextStyle(fontSize: 13, color: Colors.black),
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
