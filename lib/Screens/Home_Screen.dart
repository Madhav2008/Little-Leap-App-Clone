import 'package:flutter/material.dart';
import 'package:little_leap_clone/Constants/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 15,
                left: 10,
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('../assets/images/My.png'),
                  radius: 25,
                ),
                title: Text(
                  'Hello Madhav!',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'Let\'s take a little leap',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey.shade200,
                  ),
                ),
                trailing: Container(
                  width: 65,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.yellow.shade700,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star_rate_rounded,
                        color: Colors.yellow.shade700,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        '72',
                        style: TextStyle(
                          color: Colors.red.shade900,
                          fontWeight: FontWeight.w900,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 174,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                      Colors.grey.shade200,
                      BlendMode.softLight,
                    ),
                    fit: BoxFit.cover,
                    image: AssetImage(
                      '../assets/images/back.jpg',
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width - 50,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 20,
                              color: Colors.black.withOpacity(0.3),
                            ),
                          ],
                        ),
                        child: ListTile(
                          title: Text(
                            'Daily challenges',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          subtitle: Text(
                            'Daily challenges',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey.shade400,
                            ),
                          ),
                          trailing: Image.asset(
                            '../assets/images/dailyC.png',
                            width: 200,
                            height: 200,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
