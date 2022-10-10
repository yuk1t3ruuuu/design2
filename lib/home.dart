import 'package:flutter/material.dart';
import 'package:desigin2/playlist.dart';
import 'package:desigin2/grid.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  double? _deviceWidth;

  @override
  Widget build(BuildContext context) {

    _deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.grey[850],
      body: Column(
        children: [
          const SizedBox(height: 50.0),
          Stack(
            children: [
              Material(
                  elevation: 10.0,
                  child: Container(
                      width: _deviceWidth,
                      height: 60.0,
                      color: Colors.grey[800],
                      child: const Center(
                        child: Text('ホーム',style: TextStyle(color: Colors.white, fontSize: 24)),
                      )
                  )
              ),
              Container(
                  padding: const EdgeInsets.only(left: 390.0, top: 20.0),
                  child: const Icon(Icons.search, color: Colors.white, size: 28.0,)
              )
            ],
          ),
          const SizedBox(height: 30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 15.0),
                child: const Text('あなたへのおすすめ',style: TextStyle(color: Colors.white, fontSize: 24,fontWeight: FontWeight.bold)),
              ),
              Container(
                padding: const EdgeInsets.only(right: 20.0),
                child: const Icon(Icons.chevron_right, color: Colors.white, size: 30,)
              )
            ],
          ),
          const SizedBox(height: 30.0),
          const PlayList(), //playlistのウィジェットを作成
          const SizedBox(height: 30.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 15.0),
                child: const Text('カテゴリー',style: TextStyle(color: Colors.white, fontSize: 24,fontWeight: FontWeight.bold)),
              ),
              Container(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: const Icon(Icons.chevron_right, color: Colors.white, size: 30,)
              )
            ],
          ),
          const SizedBox(height: 20.0),
          const Grid() //Gridviewのウィジェットを作成
        ],
      ),
    );
  }



}
