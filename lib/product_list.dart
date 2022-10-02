import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  final textstyle  = const TextStyle(fontSize: 25,color: Colors.black,
                           fontWeight: FontWeight.w700);

  final textsubstyle  = const TextStyle(fontSize: 20,color: Colors.grey,);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        productstyle(context,'assets/plant1.png'),
        productstyle(context,'assets/pant2.png')
      ],
    );
  }

  productstyle(BuildContext context,image){
    return  Container(
      padding: const EdgeInsets.only(left:10),
      alignment: Alignment.centerLeft,
      width: MediaQuery.of(context).size.width - 130,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(image,fit: BoxFit.contain,),
          Text('Planta de vaso de relva',style: textstyle,),
          const SizedBox(height:5),
          Text('Planta de folha grande em um vaso de relva para decoração de sua casa ou escritório',style: textsubstyle,),
          //
          const SizedBox(height:10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('R\$ 4.500,00',style: textstyle,),
              IconButton(
                  padding: EdgeInsets.zero,
                  icon: const Icon(Icons.add_circle,size: 40,), onPressed: (){})
            ],
          )
        ],
      ),
    );
  }
}