import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            CircleAvatar(
              child: Icon(
                Icons.supervised_user_circle,
                color: Colors.white,
              ),
              radius: 20.0,
              backgroundColor: Colors.blue,
            ),
            SizedBox(
              width: 18,
            ),
            Text(
              'Chat',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.blue,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.camera_alt,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            width: 16,
          ),
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.blue,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.edit,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            width: 16,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                alignment: Alignment.center,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 20,
                    ),
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey[500],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return storyItem();
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 16,
                    );
                  },
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              ListView.separated(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemBuilder: (context, index) {
                    return messageItem();
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 16,
                    );
                  },
                  itemCount: 10)
            ],
          ),
        ),
      ),
    );
  }

  Widget storyItem() => Row(
        children: [
          Container(
            width: 60,
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.grey[200],
                        ),
                        const CircleAvatar(
                          backgroundColor: Colors.blue,
                          radius: 30,
                          child: Icon(
                            Icons.supervised_user_circle,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    // const Stack(
                    //   children: [
                    //     CircleAvatar(radius: 8,backgroundColor: Colors.green,),
                    //   ],
                    // ),
                  ],
                ),
                const Text(
                  'Maged Mohammed',
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          )
        ],
      ); //User
  Widget messageItem() => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 35,
            child: Icon(Icons.supervised_user_circle),
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Maged Mohammed",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    overflow: TextOverflow.ellipsis,
                  ),
                  textAlign: TextAlign.start,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  "last Message",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.start,
                  maxLines: 1,
                ),
              ],
            ),
          ),
          Column(
            children: [
              CircleAvatar(
                radius: 5,
                backgroundColor: Colors.green,
              )
            ],
            crossAxisAlignment: CrossAxisAlignment.end,
          )
        ],
      ); // message
}
