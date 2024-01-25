import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _HomePageState();
}

class _HomePageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      child: Column(children: [
        Container(
          // height: 100,

          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'Search',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  // color: Colors.blue,
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  child: TextField(
                    
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey.shade300,
                        contentPadding: const EdgeInsets.all(10),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: Colors.grey.shade300)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: Colors.grey.shade100)),
                        hintText: 'Search',
                        hintStyle: const TextStyle(
                          color: Colors.grey
                        ),
                        prefixIcon: Image.asset(
                                                  'assets/images/search.png',
                                                  scale: 2,
                                                  color: Colors.grey,
                                                )),

                        style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ]),
        ),
        Expanded(child: ListView.builder(itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Row(
                
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      
                      children: [
                        const CircleAvatar(
                          backgroundImage: AssetImage('assets/images/man6.jpg'),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('david.64',
                                  style: TextStyle(fontWeight: FontWeight.bold)),
                              const SizedBox(
                                height: 3,
                              ),
                              Text('Alex David',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey.shade600)),
                              const SizedBox(
                                height: 3,
                              ),
                              const Text(
                                '507k followers',
                                style: TextStyle(fontWeight: FontWeight.normal),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      
                      height: 35,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side:  BorderSide(
                                    color: Colors.grey.shade400, width: 1))),
                        child: const Text(
                          'Follow',
                          style: TextStyle(fontSize: 13, color: Colors.black),
                        ),
                      ),
                    )
                  ],
                ),
        
                const SizedBox(height: 5,),
                Container(
                  margin: const EdgeInsets.only(left: 50),
                  height: 1,
                  color: Colors.grey.shade300,
                )
              ],
            ),
          );
        }))
      ]),
    ));
  }
}
