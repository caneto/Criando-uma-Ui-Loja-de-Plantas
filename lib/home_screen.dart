import 'package:flutter/material.dart';
import 'package:lojadeplantasui/product_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final textStyle = const TextStyle(
    fontSize: 18,
    color: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.scatter_plot,
          size: 40,
          color: Colors.white,
        ),
        backgroundColor: const Color(0xff67864a),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.centerRight,
              width: MediaQuery.of(context).size.width - 120,
              child: const Icon(
                Icons.search_outlined,
                size: 40,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Row(
        children: [
          Container(
            width: 80,
            color: const Color(0xff67864a),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
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
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.only(left:10),
                  alignment: Alignment.centerLeft,
                  width: MediaQuery.of(context).size.width - 120,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Verde',style: TextStyle(color:Colors.grey,
                          fontSize: 18
                      ),),
                      Text('Plantas',style: TextStyle(
                          fontSize: 30
                      )),
                    ],
                  ),
                ),
                ProductList(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
