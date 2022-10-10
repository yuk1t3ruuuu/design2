import 'package:flutter/material.dart';
import 'package:desigin2/play.dart';

class PlayList extends StatefulWidget {
  const PlayList({Key? key}) : super(key: key);

  @override
  State<PlayList> createState() => _PlayListState();
}

class _PlayListState extends State<PlayList> {
  @override
  Widget build(BuildContext context) {
    return           SingleChildScrollView(
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
                                child: GestureDetector(
                                  child: Image.asset('images/aaaa.jpeg'),
                                  onTap: (){
                                    setState((){
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Play()));
                                    });
                                  },
                                )
                            )
                        )
                    )
                ),
                const Positioned(
                    top: 154.0,
                    left: 10.0,
                    child: Text('Cat', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))
                ),
                Positioned(
                    top: 170.0,
                    left: 10.0,
                    child:Text('CatSong', style: TextStyle(color: Colors.grey[400],fontWeight: FontWeight.bold))
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
                    child: Text('Cat', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))
                ),
                Positioned(
                    top: 170.0,
                    left: 10.0,
                    child:Text('CatSong', style: TextStyle(color: Colors.grey[400],fontWeight: FontWeight.bold))
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
                    child: Text('Cat', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))
                ),
                Positioned(
                    top: 170.0,
                    left: 10.0,
                    child:Text('CatSong', style: TextStyle(color: Colors.grey[400],fontWeight: FontWeight.bold))
                )
              ]
          ),
        ],
      ),
    );

  }
}
