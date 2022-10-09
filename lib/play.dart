import 'package:flutter/material.dart';

class Play extends StatefulWidget {
  const Play({Key? key}) : super(key: key);

  @override
  State<Play> createState() => _PlayState();
}

class _PlayState extends State<Play> {

  double _currentSliderValue = 20;
  bool _isPlay = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      body: Column(
        children: [
          const SizedBox(height: 40.0,),
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.only(left: 20.0),
            child:  GestureDetector(
              child: const Icon(Icons.arrow_back_ios, color: Colors.white, size: 30.0,),
              onTap: (){
                setState((){
                  Navigator.pop(context);
                });
              },
            )
          ),
          const SizedBox(height: 30.0,),
          Center(
            child: SizedBox(
              height: 350.0,
              width: 350.0,
              child: FittedBox(
                fit: BoxFit.fill,
                child: Image.asset('images/aaaa.jpeg')
              )
            )
          ),
          const SizedBox(height: 40.0,),
          Container(
            alignment: Alignment.center,
            child: const Text('CatSong', style: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold)),
          ),
          const SizedBox(height: 5.0,),
          Container(
            alignment: Alignment.center,
            child: Text('Cat', style: TextStyle(color: Colors.grey[400], fontSize: 25.0, fontWeight: FontWeight.bold)),
          ),
          const SizedBox(height: 20.0),
          Container(
            alignment: Alignment.center,
            child: Slider(
              activeColor: Colors.white,
              inactiveColor: Colors.grey[800],
              value: _currentSliderValue,
              min: 0.0,
              max: 100.0,
              onChanged: (double value){
                setState((){
                  _currentSliderValue = value;
                });
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text('0:00', style: TextStyle(color: Colors.grey[500]),)
              ),
              Container(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Text('5:00', style: TextStyle(color: Colors.grey[500]),)
              )
            ],
          ),
          const SizedBox(height: 30.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                GestureDetector( //IconButtonだとアイコンの位置とタップした時にボタンが反応する位置にズレがありUIも崩れたためGestureDetectorを使用
                  child: const Icon(Icons.skip_previous, size: 70.0, color: Colors.white,),
                  onTap: (){},
                ),
               GestureDetector(
                 child: Icon(_isPlay?Icons.play_circle:Icons.pause_circle, size: 100.0,color: Colors.white,),
                 onTap: (){
                   setState((){
                     _isPlay = !_isPlay;
                   });
                 },
               ),
               GestureDetector(
                 child: const Icon(Icons.skip_next, size: 70.0,color: Colors.white,),
                 onTap: (){},
               )
            ],
          )
        ],
      ),
    );
  }
}
