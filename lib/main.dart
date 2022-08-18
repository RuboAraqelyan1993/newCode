// import 'package:flutter/material.dart';
//
// void main() => runApp(FlutterTutorialApp());
//
// class FlutterTutorialApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "flutter",
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text(
//             "First project by Rub",
//             style: TextStyle(
//               color: Colors.yellow,
//               fontStyle: FontStyle.italic,
//               decoration: TextDecoration.none,
//             ),
//           ),
//           centerTitle: true,
//           backgroundColor: Colors.blueAccent,
//         ),
//         body: RichText(
//           text: TextSpan(
//             style: TextStyle(
//               fontStyle: FontStyle.italic,
//               fontSize: 50.0,
//               color: Colors.black,
//             ),
//             children: <TextSpan>[
//               TextSpan(
//                 text: "hello ",
//                 style: TextStyle(fontSize: 70.0),
//               ),
//               TextSpan(
//                 style: TextStyle(color: Colors.red),
//                 children: <TextSpan>[
//                   TextSpan(text: "Dav,"),
//                   TextSpan(
//                     text: "Dav,",
//                     style: TextStyle(
//                       decoration: TextDecoration.underline,
//                     ),
//                   ),
//                   TextSpan(text: "Dav,"),
//                 ],
//               ),
//               TextSpan(text: "hello "),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

/*
padding,icon button,
 */

// import 'package:flutter/material.dart';
//
// void main() => runApp(FlutterTutorialApp());
//
// class FlutterTutorialApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "flutter",
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("images"),
//           centerTitle: true,
//           backgroundColor: Colors.red,
//         ),
//         body: Padding(
//           padding: EdgeInsets.symmetric(
//             horizontal: 150.0,
//             vertical: 108.1,
//           ),
//           child: IconButton(
//             icon: Icon(
//               Icons.search,
//               size: 40.0,
//               color: Colors.red,
//             ),
//             color: Colors.blueGrey,
//             iconSize: 80.0,
//             onPressed: () {
//               print("Button has been pressed");
//             },
//           ),
//           // alignment: Alignment.center,
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             print("vay");
//           },
//           child: Text("add"),
//           backgroundColor: Colors.blueGrey,
//         ),
//       ),
//     );
//   }
// }

/*
container
 */
//

import 'package:flutter/material.dart';

void main() => runApp(FlutterTutorialApp());

class FlutterTutorialApp extends StatelessWidget {
  final List<String> events = [
    "Event 1",
    "Event 2",
    "Event 3",
    "Event 4",
    "Event 5",
    "Event 6",
    "Event 7",
    "Event 8",
    "Event 9",
  ];

  FlutterTutorialApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("images"),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: ListView.builder(
          ///lister sarqelu hamar irar tak,sqrolov
          scrollDirection: Axis.vertical,
          controller: ScrollController(initialScrollOffset: 120),
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.all(40),
          itemCount: events.length,
          itemBuilder: (_, index) => const Card(
            color: Colors.purple,
            elevation: 20,
            shadowColor: Colors.green,
            margin: EdgeInsets.symmetric(vertical: 6),
            child: ListTile(
              title: Text(
                "Davul",
                style: TextStyle(fontSize: 25),
              ),
              subtitle: Text("ggjk"),
              leading: Icon(
                Icons.ac_unit_sharp,
                size: 30,
                color: Colors.red,
              ),
              trailing: IconButton(
                icon: Icon(Icons.arrow_forward_ios),
                onPressed: null,
              ),
              // onPressed: () {
              //   print('vaypppp');
              // },
              // onLongPress: () => print("longPress"),
            ),
          ),
        ),

        //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        //     child: Column(
        //       children: [
        //         Text(
        //           events[index],
        //           style: TextStyle(fontSize: 50),
        //         ),
        //         Row(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: const [
        //             Text("5555"),
        //             SizedBox(
        //               width: 10,
        //             ),
        //             Text("Dav")
        //           ],
        //         )
        //       ],
        //     ),
        //   ),
        //   reverse: true,
        //   // children: events.map((e) => Text(e,style:TextStyle(fontSize: 60,))).toList(),
        // ),
        // body: Center(
        //   child: Container(
        //     width: 300,
        //     height: 300,
        //     child: Wrap(//dasavorelu hamar
        //       direction: Axis.horizontal,
        //       spacing: 15,
        //       runSpacing: 10,
        //       alignment: WrapAlignment.center,
        //       runAlignment: WrapAlignment.center,
        //       verticalDirection: VerticalDirection.down,
        //       textDirection: TextDirection.rtl,
        //       children: [
        //         Container(
        //           width: 100,
        //           height: 100,
        //           color: Colors.black,
        //           child: Text("barev",style: TextStyle(color: Colors.red),),
        //         ),Container(
        //           width: 100,
        //           height: 100,
        //           color: Colors.purple,
        //           child: Text("barev",style: TextStyle(color: Colors.black),),
        //         ),Container(
        //           width: 100,
        //           height: 100,
        //           color: Colors.purple,
        //         ),Container(
        //           width: 100,
        //           height: 100,
        //           color: Colors.purple,
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
        // body: Stack(
        //   alignment: Alignment.center,
        //   children: [
        //     Container(
        //       color: Colors.yellow,
        //       padding: EdgeInsets.all(150.0),
        //       child: Text("1"),
        //     ),
        //     Container(
        //       color: Colors.blue,
        //       padding: EdgeInsets.all(100.0),
        //       child: Text("2"),
        //     ),
        //     Positioned(
        //       width: 100,
        //     height: 150,
        //     child:Container(
        //       color: Colors.green,
        //       padding: EdgeInsets.all(50.0),
        //       child: Text("3"),
        //     ),
        //     ),
        //   ],
        // ),
        // child: Container(
        //   color: Colors.greenAccent,
        //   child: Text("5"),

        // body: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   crossAxisAlignment: CrossAxisAlignment.stretch,
        //
        //   // body:Row(
        //   //   mainAxisAlignment: MainAxisAlignment.center,
        //   //   crossAxisAlignment: CrossAxisAlignment.end,
        //
        //   children: [
        //     Container(
        //       color: Colors.yellow,
        //       padding: EdgeInsets.all(45.0),
        //       child: Text("hello"),
        //     ),
        //     const SizedBox(
        //       // width: 250,
        //       height: 25,
        //     ),
        //     Container(
        //       color: Colors.pink,
        //       padding: EdgeInsets.all(45.0),
        //       child: Text("hello"),
        //     ),
        //     Container(
        //       color: Colors.purple,
        //       padding: EdgeInsets.all(50.0),
        //       child: Text("hello"),
        //     ),
        //     Expanded(
        //       flex:2,
        //       child: Container(
        //       color: Colors.greenAccent,
        //       padding: EdgeInsets.all(50.0),
        //       child: Text("hello"),
        //     ),
        // Container(
        //   color: Colors.red,
        //   padding: EdgeInsets.all(55.0),
        //   child: Text("hello"),
        // ),
        // ),
        // ],
        // ),

//           padding: EdgeInsets.symmetric(
//             horizontal: 150.0,
//             vertical: 108.1,
//
        // body: Container(
        //   color: Colors.yellow[150],
        //   margin: EdgeInsets.all(20.0),
        //   padding: EdgeInsets.all(20.0),
        //   transform: Matrix4.rotationX(10.0),
        // body: Container(
        //   decoration: BoxDecoration(
        //     color: Colors.yellow,
        //     borderRadius: BorderRadius.circular(30),
        //     border: Border.all(
        //       width: 3,
        //       color: Colors.blueGrey,
        //       style: BorderStyle.solid,
        //     ),
        //     boxShadow: const [
        //      BoxShadow(
        //        color: Colors.black,
        //        spreadRadius: 6,
        //        blurRadius: 8,
        //        offset: Offset(8, 8),
        //      )
        //     ],
        //     gradient: RadialGradient(
        //       colors: [
        //         Colors.black,
        //         Colors.redAccent,
        //       ]
        //     )
        //
        //   ),
        //   child: IconButton(
        //     icon: const Icon(
        //       Icons.access_alarm,
        //       color: Colors.yellow,
        //     ),
        //   color: Colors.blue,
        //     iconSize: 90,
        //     onPressed: () {  },
        //
        //   // margin: EdgeInsets.all(20.0),
        //   //   padding: EdgeInsets.all(25.0),
        //   // decoration: const BoxDecoration(
        //   // alignment: Alignment.center,
        //   //   color: Colors.yellow,
        //   //   shape: BoxShape.circle,
        //  ),
        // ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("vay");
          },
          child: const Text("add"),
          // backgroundColor: Colors.blueGrey,
        ),
      ),
    );
  }
}
