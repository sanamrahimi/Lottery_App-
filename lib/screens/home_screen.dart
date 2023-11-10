import 'package:lottery_app/app/all_screens.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int x = 0;
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lottery App'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
            child: Text('Lottery winning number is 4',style: TextStyle(
        fontSize: 18,
      ),),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 250,
            width: 350,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(.2),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: x == 4
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.done,
                          color: Colors.green,
                          size: 35,
                        ),
                        SizedBox(height: 20,),
                        Text(
                          'Congratulation you have won the lottery, your number is $x\n',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.error,
                          color: Colors.red,
                          size: 35,
                        ),
                        SizedBox(height: 20,),

                        Text(
                          'Better luck next time your number is $x\n try again',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          x = random.nextInt(100);
          print(x);
          setState(() {});
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
//
// void main() {
//   runApp( MyApp());
// }
//
// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   int x = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('App Bar'),
//         ),
//         body: SafeArea(
//           child: Center(
//             child: Text(
//               x.toString(),
//               style: TextStyle(
//                 fontSize: 50,
//               ),
//             ),
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             x++;
//             setState(() {
//
//             });
//             print(x.toString());
//           },
//           child: Icon(Icons.add),
//         ),
//       ),
//     );
//   }
// }
//
