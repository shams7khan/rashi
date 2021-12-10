import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // double cellHeight = (MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top)/3;
  @override
  Widget build(BuildContext context) {

    var cellCount = 0;

    double cellWidth = MediaQuery.of(context).size.width/3;
    double cellHeight = (MediaQuery.of(context).size.height - AppBar().preferredSize.height
    - MediaQuery.of(context).padding.top)/4;

    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.brown[900],
        title: SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("पंचांग"),
              Text("त्यौहार"),
              Text("राशिफल"),
              Text("धर्म"),
              
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Container(

          // height: MediaQuery.of(context).size.height - MediaQuery.of(context).size.,
          child: GridView.count(
            // double height = 200;
            crossAxisCount: 3,
            mainAxisSpacing: 1,
            crossAxisSpacing: 1,
            // cellCount = crossAxisCount;
            childAspectRatio: (cellWidth/cellHeight),
            children: [
              boxFormet("assets/Aries.png","मेष"),
              boxFormet("assets/Taurus.png","वृषभ"),
              boxFormet("assets/Gemini.png","मिथुन"),
              boxFormet("assets/Cancer.png","कर्क"),

              boxFormet("assets/Leo.png","सिंह"),
              boxFormet("assets/Virgo.png","कन्या"),
              boxFormet("assets/Libra.png","तुला"),
              boxFormet("assets/Scorpio.png","वृश्चिक"),

              boxFormet("assets/Sagittarius.png","धनु"),
              boxFormet("assets/Capricorn.png","मकर"),
              boxFormet("assets/Aquarius.png","कुंभ"),
              boxFormet("assets/Pisces.png","मीन"),
                      
              
            ],
            ),
        )
        ),
      
    );
  }
  boxFormet(String image,String txt){
    
    // var height = (MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top)/4;

    return Container(
      // height: height,
      color: Colors.indigo[900],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image,
          height: 50,
          width: 50
          ),
          Text(txt,
            style: TextStyle(
              color: Colors.white
            )
          )
        ],
      ),
    );
  }
}