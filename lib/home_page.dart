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
      //drawer w sa6erteyn li t7the houme li 36awne 3 ligne a gauche lvog m3a side menu
      drawer: SafeArea(
        child: Drawer(
          child: Column(
            children: [
              const DrawerHeader(
                //ha4e 36ane chi kvt app bar l side menu
                decoration: BoxDecoration(
                  //4e w code li t7tou yak nlewnou app bar li v side menu li glne lvog
                  color: Colors.red,
                ),
                //listile w li m3ahe houme li darou essem 3le side menu lvog
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
                //list stile hiye li tkteb 3le side menu
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
              //hon drne liste style w semeynaha logout w drne m3a navigator yak leyn nklickouha trj3ne l loginpage
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
                  //hon drn lhe icon logout
                  Icons.logout,
                ),
                title: const Text(
                  //w hon semeynaha a 3dlnaha
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
        //ha4i yak t5aaline ngudou ndirou widgehatne nyn t7t bdoun ma ymtle ecran y3ni ntemou n scrollou yak ngu8ou nchovouhm kvt 7d y5arass tiktok
        child: Column(
          //6ari9a li 3dlnaha bihe hiye 3ne drne refractor 3le column + wrap widget w ktbne smhe
          children: [
            Padding(
              //yak ndirou beynhm space m3a 7wache tlphn
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
            //gesturedetector yak n3dou soura clickable w tguss bine description page
            //First
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
                      //hon listTile biheli da5l container vtji ngrou li ktbtou vihe
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
                        //ydur shadow 3le lcontainer li vih soura yak y3oud zeyn design
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
