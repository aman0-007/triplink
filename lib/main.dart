import 'package:flutter/material.dart';
import 'package:triplink/screens/onboard/onboard_screen.dart';
import 'package:triplink/screens/register/register_screen.dart';
import 'package:triplink/themes.dart';
import 'screens/afteronboard/afteronboard_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TripLink',
      theme: TripLinkTheme.lightTheme,
      darkTheme: TripLinkTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: OnboardScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TripLink"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text("Explore"),
            ),
            const SizedBox(height: 20),
            FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.add),
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Enter your name",
                hintText: "John Doe",
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Enter your email",
                hintText: "example@mail.com",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
