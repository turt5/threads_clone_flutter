import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class Post extends StatefulWidget {
  Post({super.key, required this.postText, required this.image, required this.username, required this.userIcon});
  final String postText;
  final String image;
  final String username;
  final String userIcon;
  
  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      margin: const EdgeInsets.only(right: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 40,
            width: 40,
            child: Stack(
              children: [
                widget.userIcon==''? CircleAvatar(
                  backgroundColor: Colors.deepOrange.shade500,
                  child: Center(
                    child: Text(widget.username.substring(0, 1)),
                  ),
                ):const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/man1.jpg'),
                ),
                Positioned(
                  bottom: 0,
                  right: -5,
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: const Icon(
                      CupertinoIcons.add,
                      color: Colors.black,
                      size: 18,
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.username,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 3),
                MarkdownBody(
                  data: widget.postText,
                ),
                // const SizedBox(height: 10,),
                (widget.image=="")?Container(
                  
                  height: 0,
                  width: 0,
                ):Container(margin: EdgeInsets.only(top: 10),child: ClipRRect(borderRadius: BorderRadius.circular(10),child: Image.asset(widget.image,))),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 30,
                      height: 30,
                      child: IconButton(onPressed: (){
                      
                      }, icon: Icon(CupertinoIcons.heart,color: Colors.grey.shade600,)),
                    ),
                    const SizedBox(width: 10,),
                    SizedBox(
                      width: 30,
                      height: 30,
                      child: IconButton(onPressed: (){
                      
                      }, icon: Icon(CupertinoIcons.chat_bubble,color: Colors.grey.shade600)),
                    ),
                    const SizedBox(width: 10,),
                    SizedBox(
                      width: 30,
                      height: 30,
                      child: IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.repeat,size: 25,color: Colors.grey.shade600)))
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
