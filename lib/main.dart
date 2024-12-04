import 'package:flutter/material.dart';
import 'package:testing_app/quiz.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}
class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPagStateState();
}



class _FirstPagStateState extends State<FirstPage> {
  String buttonName = 'Start App';
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Happy to see you, Welcome!'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: double.infinity, // Ensures the container spans the full screen height
          width: double.infinity, // Ensures the container spans the full screen width
          color: const Color.fromARGB(255, 14, 11, 53), // Background color
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipOval(
                child: Image.asset(
                  'assets/images/this-logo.png',
                  width: 250,
                  height: 250,
                  fit: BoxFit.cover, // Ensures the image fits nicely
                ),
              ),
              const SizedBox(height: 25), // Spacer between image and button
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => const Quiz(), // Navigate to the Quiz screen
                    ),
                  );
                  setState(() {
                    buttonName = 'Start Apps'; // Update button text
                  });
                },
                child: Text(buttonName),
              ),
            ],
          ),
        ),
      ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'Settings',
              icon: Icon(Icons.settings),
            ),
          ],
          currentIndex: currentIndex,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
        )
    );
  }
}





































// class NextPage extends StatefulWidget {
//   const NextPage({super.key});
//
//   @override
//   State<NextPage> createState() => _NextPageState();
// }
//
// class _NextPageState extends State<NextPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Next Page'), // Title of the AppBar
//         centerTitle: true, // Centers the title
//         backgroundColor: Colors.blue, // Optional: AppBar color
//       ),
//       body: const Center(
//         child: Text('Yesssssss'),
//       ),
//     );
//   }
// }
