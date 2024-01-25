import 'package:flutter/material.dart';
import 'package:threads_clone/components/post.dart';
import 'package:threads_clone/util/model/posts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Posts> postsList = [];

  @override
  void initState() {
    super.initState();

    // Initializing postsList
    Posts post1 = Posts(
      name: "lemonn.exe",
      postText: "Hello, this is my first post!",
      imageURL: "",
      userIcon: ''
    );
    Posts post2 = Posts(
      name: "abcd.efg",
      postText: "Just sharing a cool photo!",
      imageURL: "assets/images/man2.jpg",
      userIcon: ''
    );

    Posts post3=Posts(
      name: 'abcd.efg',
      postText: 'Hello friends!',
      imageURL: '',
      userIcon: ''
    );
    postsList.add(post1);
    postsList.add(post2);
    postsList.add(post3);

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            color: Colors.white,
            width: MediaQuery.of(context).size.width,
            height: 60, // Fixed height for the image container
            alignment: Alignment.center,
            margin: const EdgeInsets.only( bottom: 5),
            padding: const EdgeInsets.all(10),
            child: Image.asset('assets/images/threads.png'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: postsList.length,
              itemBuilder: (context, index) {
                return Post(
                  userIcon: postsList[index].userIcon,
                  image: postsList[index].imageURL,
                  username: postsList[index].name,
                  postText: postsList[index].postText,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
