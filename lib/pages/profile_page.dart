import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 133, 96),
        title: Text("Profile Page"),
        leading: Icon(Icons.arrow_back_ios_new),
        actions: [Icon(Icons.home_filled)],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(clipBehavior: Clip.none,
            width: 400,
            height: 100,
            child: Stack(
              children: [
                Container(
                  child: Image.asset(
                    './assets/images/uin_kampus3.jpeg',
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                  // height: 200,
                  // width: 200,
                ),
                Positioned(
                  top: 50,
                  child: CircleAvatar(
                    radius: 50,
                    // child: ,
                    backgroundImage: NetworkImage(
                      './assets/images/user_circle.png',
                    ),
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(),
          ),
        ],
      ),
    );
  }
}
