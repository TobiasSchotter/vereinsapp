import 'package:flutter/material.dart';

void main() => runApp(const Main());

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: NavigationExample());
  }
}

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Start',
          ),
          NavigationDestination(
            icon: Icon(Icons.search),
            label: 'Suchen',
          ),
          NavigationDestination(
            icon: Icon(Icons.add_circle_outline),
            label: 'Verkaufen',
          ),
          NavigationDestination(
            icon: Icon(Icons.mail_outline),
            label: 'Nachrichten',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
      ),
      body: <Widget>[
        Container(
          color: Colors.white,
          alignment: Alignment.center,
          child: const Text('Home'),
        ),
        Container(
          color: Colors.white,
          alignment: Alignment.center,
          child: const Text('Suche'),
        ),
        Container(
          color: Colors.white,
          alignment: Alignment.center,
          child: const Text('Verkaufen'),
        ),
        Container(
          color: Colors.white,
          alignment: Alignment.center,
          child: const Text('Nachrichten'),
        ),
        Container(
          color: Colors.white,
          alignment: Alignment.center,
          child: const Text('Profil'),
        ),
      ][currentPageIndex],
    );
  }
}

