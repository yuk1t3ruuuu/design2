import 'package:flutter/material.dart';


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
                child: const Text('あなたへのおすすめ',style: TextStyle(color: Colors.white, fontSize: 24)),
              ),
              Container(
                padding: const EdgeInsets.only(right: 20.0),
                child: const Icon(Icons.chevron_right, color: Colors.white, size: 30,)
              )
            ],
          ),
          const SizedBox(height: 30.0),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Stack(
                    children: [
                      Container(
                          width: 150.0,
                          height: 190.0,
                          margin: const EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                              color: Colors.grey[850],
                              borderRadius: BorderRadius.circular(0)
                          ),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),//画像の上側の左右の角しか丸みを帯びませんでした
                              child: Align(
                                  alignment: Alignment.topCenter,
                                  child: FittedBox(
                                    fit: BoxFit.contain,
                                    child: Image.asset('images/aaaa.jpeg'),
                                  )
                              )
                          )
                      ),
                      const Positioned(
                          top: 154.0,
                          left: 10.0,
                          child: Text('Cat', style: TextStyle(color: Colors.white))
                      ),
                      Positioned(
                          top: 170.0,
                          left: 10.0,
                          child:Text('CatSong', style: TextStyle(color: Colors.grey[400]))
                      )
                    ]
                ),
                const SizedBox(width: 5,),
                Stack(
                    children: [
                      Container(
                          width: 150.0,
                          height: 190.0,
                          margin: const EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                              color: Colors.grey[850],
                              borderRadius: BorderRadius.circular(0)
                          ),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Align(
                                  alignment: Alignment.topCenter,
                                  child: FittedBox(
                                    fit: BoxFit.contain,
                                    child: Image.asset('images/aaaa.jpeg'),
                                  )
                              )
                          )
                      ),
                      const Positioned(
                          top: 154.0,
                          left: 10.0,
                          child: Text('Cat', style: TextStyle(color: Colors.white))
                      ),
                      Positioned(
                          top: 170.0,
                          left: 10.0,
                          child:Text('CatSong', style: TextStyle(color: Colors.grey[400]))
                      )
                    ]
                ),
                const SizedBox(width: 5,),
                Stack(
                    children: [
                      Container(
                          width: 150.0,
                          height: 190.0,
                          margin: const EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                              color: Colors.grey[850],
                              borderRadius: BorderRadius.circular(0)
                          ),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Align(
                                  alignment: Alignment.topCenter,
                                  child: FittedBox(
                                    fit: BoxFit.contain,
                                    child: Image.asset('images/aaaa.jpeg'),
                                  )
                              )
                          )
                      ),
                      const Positioned(
                          top: 154.0,
                          left: 10.0,
                          child: Text('Cat', style: TextStyle(color: Colors.white))
                      ),
                      Positioned(
                          top: 170.0,
                          left: 10.0,
                          child:Text('CatSong', style: TextStyle(color: Colors.grey[400]))
                      )
                    ]
                ),
              ],
            ),
          ),
          const SizedBox(height: 30.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 15.0),
                child: const Text('カテゴリー',style: TextStyle(color: Colors.white, fontSize: 24)),
              ),
              Container(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: const Icon(Icons.chevron_right, color: Colors.white, size: 30,)
              )
            ],
          ),
          const SizedBox(height: 20.0),
          GridView.count(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              crossAxisCount: 3,
              mainAxisSpacing: 5.0,
              crossAxisSpacing: 5.0,
              padding: const EdgeInsets.all(10.0),
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  height: 120.0,
                  width: 180.0,
                  decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      gradient:  LinearGradient(
                        begin: FractionalOffset.topLeft,
                        end: FractionalOffset.bottomRight,
                        colors: [
                          const Color(0xFF8E24AA),
                          const Color(0xFF7B1FA2).withOpacity(0.6),
                          const Color(0xFF6A1B9A).withOpacity(0.6),
                          const Color(0xFF4A148C).withOpacity(0.6),
                          const Color(0xFF212121).withOpacity(0.6),
                        ],
                      )
                  ),
                  child: const Text('クラシック',style: TextStyle(color: Colors.white, fontSize: 20.0),),
                ),
              ]
          )
        ],
      ),
    );
  }



}
