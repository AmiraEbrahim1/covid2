import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CovidScreen{
  final String image;
  final String title1;
  final String title2;
  final String title3;
  CovidScreen({
    required this.image,
    required this.title1,
    required this.title2,
    required this.title3,
  });
}
class Covid extends StatefulWidget {
  const Covid({Key? key}) : super(key: key);

  @override
  _CovidState createState() => _CovidState();
}

class _CovidState extends State<Covid> {
  int currentindex=0;
  @override
  Widget build(BuildContext context) {
    List<CovidScreen> CovidList =
    [
CovidScreen(
  image:'images/cherry-stay-safe.png',
    title1:'Prevention Tips for Covid_19',
  title2: 'Stay at Home',
  title3: 'Stay at home,protect \n yourself andloved ones from corona virus  '
),
      CovidScreen(
          image:'images/clip-keep-distance-sign-keep-the-15-meter-distance-1.png',
          title1:'Prevention Tips for Covid_19',
          title2: 'Keep Distance',
          title3: 'help stop the spread \n of corona virus by keeping distance  '
      ),
      CovidScreen(
          image:'images/patient.png',
          title1:'Prevention Tips for Covid_19',
          title2: 'Use Face Mask',
          title3: 'wear a mask that covers \n your nose and mouth to help protect yourself '
      ),
      CovidScreen(
          image:'images/shake-hands.png',
          title1:'Prevention Tips for Covid_19',
          title2: 'Stop Shaking Hands',
          title3: 'covid _19 can spread to your body \n from an effected person while shaking hands  '
      ),
      CovidScreen(
          image:'images/cherry-stay-safe.png',
          title1:'Prevention Tips for Covid_19',
          title2: 'Stay at Home',
          title3: 'Stay at home,protect \n yourself andloved ones from corona virus  '
      ),
    ];
    return Scaffold(
      body: Stack(
        children:[
          PageView(
          children: CovidList.map((item) => Container(
            color: Colors.white,
             child: Column(
              children: [

                SizedBox(height: 50,),
                Stack(children:[
                Container(
                  width:MediaQuery.of(context).size.width,
                    height: 300,
                    child: Image(image: AssetImage(item.image))),
                  Positioned(
                      left: 30,
                      bottom: 150,
                      child:Image(image: AssetImage('images/Ellipse 15.png'),)
                  ),
                  Positioned(
                      left: 60,
                      bottom: 100,
                      child:Image(image: AssetImage('images/Ellipse 14.png'),)
                  ),
                  Positioned(
                      right: 30,
                      bottom: 150,
                      child:Image(image: AssetImage('images/Ellipse 15.png'),)
                  ),
                  Positioned(
                      right: 80,
                      bottom: 80,
                      child:Image(image: AssetImage('images/Ellipse 18.png'),)
                  ),
                  Positioned(
                      right: 90,
                      bottom: 150,
                      child:Image(image: AssetImage('images/Ellipse 14.png'),)
                  ),
                  ]
                ),
                SizedBox(height: 50,),
                Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:16),
                        child: Text(item.title2,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                      ),
                      SizedBox(height: 30,),
                        Text(item.title3,textAlign:TextAlign.center,style: TextStyle(color: Colors.black38),),

                    ],
                  ),
                )
              ],
          ),

          )).toList(),
              onPageChanged: (val){
            setState(() {
              currentindex=val;
            });
    },
        ),

       Positioned(
         left: 140,
         bottom: 100,
           child:Indicator( currentindex)
           ),
Positioned(
  left: 50,
  right: 20,
  bottom: 650,
  child:

       Row(
        children: [
          Text('Prevention Tips for Covid_19',style: TextStyle(fontWeight: FontWeight.bold),),
          Text(' Covid_19',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
        ],
      ),

)
        ]
    ),

    );
}
  }
class Indicator extends StatelessWidget{
  final int index;
  Indicator(this.index);
  @override
  Widget build (BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BuildContainer(index==0?Colors.blue:Colors.redAccent),
        BuildContainer(index==1?Colors.blue:Colors.redAccent),
        BuildContainer(index==2?Colors.blue:Colors.redAccent),
        BuildContainer(index==3?Colors.blue:Colors.redAccent),
      ],
    );
  }
}
Container BuildContainer (Color color) {
  return Container(
    margin: EdgeInsets.all(4),
    width: 15,
    height: 15,
    decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle
    ),
  );
}
