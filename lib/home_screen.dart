import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final textStyle = TextStyle(
    fontSize: 18,
    color: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            width: 90,
            color: const Color(0xff67864a),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.scatter_plot,
                  size: 40,
                  color: Colors.white,
                ),
                RotatedBox(
                  quarterTurns: 3,
                  child: Text(
                    'Plantas Verdes',
                    style: textStyle,
                  ),
                ),
                RotatedBox(
                  quarterTurns: 3,
                  child: Text(
                    'Plantas Casa',
                    style: textStyle,
                  ),
                ),
                RotatedBox(
                  quarterTurns: 3,
                  child: Text(
                    'Plantas Extermas',
                    style: textStyle,
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              const SizedBox(height: 70,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width - 120,
                      child: const Icon(
                        Icons.search_outlined,
                        size: 40,
                      ),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
