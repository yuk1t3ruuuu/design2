import 'package:flutter/material.dart';
import 'package:desigin2/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Design(),
    );
  }
}

class Design extends StatefulWidget {
  const Design({Key? key}) : super(key: key);

  @override
  State<Design> createState() => _DesignState();
}

class _DesignState extends State<Design> {

  int _activeIndex = 0;

  final _pages = [
    Home(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_activeIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'ホーム',
              backgroundColor: Color(0xFF303030)
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: '検索',
              backgroundColor: Color(0xFF303030)
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.playlist_play),
              label: 'プレイリスト',
              backgroundColor: Color(0xFF303030)
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              label: 'アカウント',
              backgroundColor: Color(0xFF303030)
          )
        ],
        unselectedItemColor: Colors.grey[400],
        selectedItemColor: Colors.white,
        showUnselectedLabels: true,
        currentIndex: _activeIndex,
        onTap: (index){
          setState((){
            _activeIndex = index;
          });
        },
      ),
    );
  }
}
