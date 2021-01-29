import 'package:flutter/cupertino.dart';
import 'package:imageview360/imageview360.dart';
import 'package:flutter/material.dart';

class Aventador extends StatefulWidget {
  Aventador({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _AventadorState createState() => _AventadorState();
}

class _AventadorState extends State<Aventador> {
  List<ImageProvider> imageList = List<ImageProvider>();
  bool autoRotate = true;
  int rotationCount = 5;
  int swipeSensitivity = 2;
  bool allowSwipeToRotate = true;
  RotationDirection rotationDirection = RotationDirection.anticlockwise;
  Duration frameChangeDuration = Duration(milliseconds: 500);
  bool imagePrecached = false;

  @override
  void initState() {
    //* To load images from assets after first frame build up.
    WidgetsBinding.instance
        .addPostFrameCallback((_) => updateImageList(context));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Color(0xFFefc92a),
        child: Container(
            height: MediaQuery.of(context).size.height * 0.05,
            child: Center(
              child: Text(
                "Create Your Aventador S",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )),
      ),
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: SweepGradient(
            center: FractionalOffset.topRight,
            startAngle: 2,
            endAngle: 5,
            colors: const <Color>[Colors.black, Color(0xFFefc92a)],
            stops: const <double>[0.0, 0.1],
          ),
          // gradient: LinearGradient(
          //   colors: [Color(0xFFefc92a), Color(0xFF1a1a14)],
          //   begin: Alignment(-1.0, -2.0),
          //   end: Alignment(1.0, 2.0),
          // ),
        ),
        child: ListView(
          scrollDirection: Axis.vertical,
          physics: ClampingScrollPhysics(),
          children: <Widget>[
            Stack(
              // alignment: Alignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Aventador S",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5),
                      ),
                      Text(
                        "DARE YOUR EGO",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 1.5),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.1),
                  child: (imagePrecached == true)
                      ? ImageView360(
                          key: UniqueKey(),
                          imageList: imageList,
                          autoRotate: autoRotate,
                          rotationCount: rotationCount,
                          rotationDirection: RotationDirection.anticlockwise,
                          frameChangeDuration: Duration(milliseconds: 500),
                          swipeSensitivity: swipeSensitivity,
                          allowSwipeToRotate: allowSwipeToRotate,
                          onImageIndexChanged: (currentImageIndex) {},
                        )
                      : Text(""),
                ),
                Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.45,
                      left: 30,
                      right: 30),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'TECHNICAL SPECIFICATIONS',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'DISPLACEMENT',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              '6,498 millilitre (396.5 cu in)',
                              style: TextStyle(color: Colors.white),
                            ),
                          ]),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'MAX. POWER',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              '740 CV (544 kW) @ 8,400 rpm',
                              style: TextStyle(color: Colors.white),
                            ),
                          ]),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'TOP SPEED',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              '350 km/h (217 mph)',
                              style: TextStyle(color: Colors.white),
                            ),
                          ]),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'ACCELERATION 0-100 KM/H',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              '2.9 s',
                              style: TextStyle(color: Colors.white),
                            ),
                          ]),
                      SizedBox(
                        height: 20,
                      ),
                      Card(
                        color: Colors.black,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            ExpansionTile(
                              title: Text(
                                'Expand all Technical Specification',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              children: <Widget>[
                                SizedBox(
                                  height: 20,
                                ),
                                ExpansionTile(
                                  title: Text(
                                    'ENGINE',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  children: <Widget>[
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            'ENGINE',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Text(
                                            'V12, 60°, MPI (Multi Point Injection)',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ]),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            'DISPLACEMENT',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Text(
                                            '6,498 cm³ (396.5 cu in)',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ]),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            'BORE X STROKE',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Text(
                                            '95 mm x 76,4 mm (3.74 x 3.01 in)',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ]),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            'COMPRESSION RATIO',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Text(
                                            '11,8:1',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ]),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            'MAX. POWER',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Text(
                                            '740 CV (544 kW) @ 8.400 rpm',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ]),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            'MAX. TORQUE',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Text(
                                            '690 Nm (507 lb.-ft.) @ 5.500 rpm',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ]),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            'WEIGHT TO POWER RATIO',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Text(
                                            '2,13 kg/CV (4.69 lb/CV)',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ]),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            'LUBRICATION',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Text(
                                            'Dry sump',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ]),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            'EMISSION CLASS',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Text(
                                            'Euro 6 - LEV 2',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ]),
                                    SizedBox(
                                      height: 50,
                                    ),
                                  ],
                                ),
                                ExpansionTile(
                                  title: Text(
                                    'TRANSMISSION',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  children: <Widget>[
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            'TRANSMISSION TYPE',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Text(
                                            'Electronically controlled\nall-wheel drive system\n(Haldex gen. IV)with\nrear mechanical self-\nlocking differential',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ]),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            'GEARBOX',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Text(
                                            'ISR (Independent Shifting\nRods) gearbox with 7 speeds',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ]),
                                    SizedBox(
                                      height: 50,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void updateImageList(BuildContext context) async {
    for (int i = 1; i <= 15; i++) {
      imageList.add(AssetImage('lib/assets/images/AventadorImages/$i.PNG'));
      //* To precache images so that when required they are loaded faster.
      await precacheImage(
          AssetImage('lib/assets/images/AventadorImages/$i.PNG'), context);
    }
    setState(() {
      imagePrecached = true;
    });
  }
}
