import 'package:flutter/material.dart';

class Grid extends StatelessWidget {
  const Grid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double? deviceWidth;
    deviceWidth = MediaQuery.of(context).size.width;

    return SizedBox(
        height: 250,
        width: deviceWidth,
        child:GridView.count(
            scrollDirection: Axis.horizontal,
            crossAxisCount: 2,
            childAspectRatio: (0.9 / 1.4),
            mainAxisSpacing: 15.0,
            crossAxisSpacing: 15.0,
            padding:  const EdgeInsets.all(10.0),
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
                child:  const Text('クラシック',style: TextStyle(color: Colors.white, fontSize: 20.0),),
              ),
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
                        const Color(0xFFFDD835),
                        const Color(0xFFFBC02D).withOpacity(0.6),
                        const Color(0xFFF9A825).withOpacity(0.6),
                      ],
                    )
                ),
                child:  const Text('カントリー',style: TextStyle(color: Colors.white, fontSize: 20.0),),
              ),
              Container(
                alignment: Alignment.center,
                height: 120.0,
                width: 180.0,
                decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    gradient:   const LinearGradient(
                      begin: FractionalOffset.topLeft,
                      end: FractionalOffset.bottomRight,
                      colors: [
                       Color(0xFFFF5252),
                       Color(0xFFFF1744),
                       Color(0xFFD50000)
                        ],
                    )
                ),
                child:  const Text('ポップ',style: TextStyle(color: Colors.white, fontSize: 20.0),),
              ),
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
                        const Color(0xFF40C4FF),
                        const Color(0xFF00B0FF).withOpacity(0.7),
                        const Color(0xFF0091EA).withOpacity(0.8),
                      ],
                    )
                ),
                child:  const Text('ロック',style: TextStyle(color: Colors.white, fontSize: 20.0),),
              ),
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
                        const Color(0xFFB2FF59),
                        const Color(0xFF76FF03).withOpacity(0.6),
                        const Color(0xFF64DD17).withOpacity(0.8)
                      ],
                    )
                ),
                child:  const Text('ジャズ',style: TextStyle(color: Colors.white, fontSize: 20.0),),
              ),
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
                        const Color(0xFFF44336),
                        const Color(0xFFE53935),
                        const Color(0xFFD32F2F).withOpacity(0.7),
                      ],
                    )
                ),
                child:  const Text('パレード',style: TextStyle(color: Colors.white, fontSize: 20.0),),
              )
            ]
        )
    );
  }
}
