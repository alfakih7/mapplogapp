import 'package:flutter/material.dart';
import 'package:moneyapp/descriptipn_page.dart';
import 'package:moneyapp/main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color backgroundcolor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      appBar: AppBar(
        actions: [
          //action means everything on the end of the  bar
          IconButton(
              //to create a buton in the end of the appbar
              onPressed: () {
                setState(() {
                  if (backgroundcolor == Colors.white) {
                    backgroundcolor = Colors.red;
                  } else {
                    backgroundcolor = Colors.white;
                  }
                });
              },
              icon: const Icon(
                Icons.color_lens,
              ))
        ],
        backgroundColor: Colors.red,
      ),
      
      drawer: SafeArea(
        child: Drawer(
          child: Column(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
                
                child: ListTile(
                  title: Text(
                    'flutter map',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              ListTile(
                onTap: () {},
                leading: const Icon(
                  Icons.settings,
                ),
                title: const Text(
                  'settings',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const LoginPage();
                      },
                    ),
                  );
                },
                leading: const Icon(
                  Icons.logout,
                ),
                title: const Text(
                  'Log out',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              child: Wrap(
                spacing: 20, // space between the red titles
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      shape: const StadiumBorder(), //design of the buttons
                    ),
                    child: const Text(' money '),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      shape: const StadiumBorder(),
                    ),
                    child: const Text('Bitcoin'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      shape: const StadiumBorder(),
                    ),
                    child: const Text('stock market'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      shape: const StadiumBorder(),
                    ),
                    child: const Text('house market'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      shape: const StadiumBorder(),
                    ),
                    child: const Text('diamond hands'),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const DescriptionPage(
                        title: 'diamond hands',
                        imagePath: 'images/image1.png.png',
                      );
                    },
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(40),
                width: double.infinity,
                margin: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 3,
                        spreadRadius: 3,
                        offset: Offset(2, 2),
                        color: Colors.black12,
                      ),
                    ]),
                child: Column(
                  children: [
                    Image.asset('images/image1.png.png'),
                    const ListTile(
                      title: Text(
                        'diamond hands',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios_rounded),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const DescriptionPage(
                        title: 'how to become rich',
                        imagePath: 'images/image2.png.png',
                      );
                    },
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(40),
                width: double.infinity,
                margin: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 3,
                        spreadRadius: 3,
                        offset: Offset(2, 2),
                        color: Colors.black12,
                      ),
                    ]),
                child: Column(
                  children: [
                    Image.asset('images/image2.png.png'),
                    const ListTile(
                      title: Text(
                        'how to become rich',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios_rounded),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const DescriptionPage(
                        title: 'should u buy a house',
                        imagePath: 'images/image3.png.png',
                      );
                    },
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(40),
                width: double.infinity,
                margin: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 3,
                        spreadRadius: 3,
                        offset: Offset(2, 2),
                        color: Colors.black12,
                      ),
                    ]),
                child: Column(
                  children: [
                    Image.asset('images/image3.png.png'),
                    const ListTile(
                      title: Text(
                        'should u buy a house',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios_rounded),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const DescriptionPage(
                        title: 'how to make apps',
                        imagePath: 'images/image4.png.png',
                      );
                    },
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(40),
                width: double.infinity,
                margin: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 3,
                        spreadRadius: 3,
                        offset: Offset(2, 2),
                        color: Colors.black12,
                      ),
                    ]),
                child: Column(
                  children: [
                    Image.asset('images/image4.png.png'),
                    const ListTile(
                      title: Text(
                        'how to make apps',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios_rounded),
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
