import 'package:flutter/material.dart';
import 'package:moneyapp/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    //scaffod its the full screen
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 230, 19, 19),
      //the body centre is to make the columns in the centre bcz when we give it just mainaxisalignement centre  it will be in the centre  but in another way
      body: Center(
          child: Column(
        //the column give as the acces to create in it a lot of widgets and arguments in the same time
        //we need mainaxisalignment to make it look more in the centre
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'welcome',
            style: TextStyle(
              color: Colors.white,
              fontSize: 55, //size of the text
              fontWeight: FontWeight.bold, //font of the text
            ),
          ),
          const Text(
            'To mapp blog',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
          //to make space between the to TEXT widgets
          const SizedBox(
            height: 20,
          ),
          Image.asset('images/login.png.png'),
          //to make space between the to image and the elevated button
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(
            //to create a button that have functionality
            onPressed: () {
              //the navigator and the push replecement its for when we click the button its will go to the homepage
              Navigator.of(context).pushReplacement(
                // there is push and push replecement and pop u should search the diff between them
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const HomePage(); // to return to home page when we use the elebated button
                  },
                ),
              );
            }, //this is styling and designing the form of the elevated button
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.red,
              minimumSize: const Size(300, 40),
              backgroundColor: Colors.white,
            ),
            child: const Text('login'), // the text in the elevated button
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                minimumSize: const Size(300, 40)),
            child: const Text('register'),
          ),
        ],
      )),
    );
  }
}
