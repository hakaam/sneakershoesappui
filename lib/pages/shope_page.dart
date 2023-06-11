import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakershopui/models/shoe.dart';

import '../components/shoe_tile.dart';
import '../models/cart.dart';

class ShopePage extends StatefulWidget {
  const ShopePage({Key? key}) : super(key: key);

  @override
  State<ShopePage> createState() => _ShopePageState();
}

class _ShopePageState extends State<ShopePage> {
  void addShoeToCart(Shoe shoe,){
    Provider.of<Cart>(context,listen: false).addItemToCart(shoe);

    showDialog(context: context,
        builder: (context)=>AlertDialog(
          title: Text('Successfully added'),
          content: Text('Check your cart'),
        ));


  }
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context,value,child)=>Column(
          children: [
            Container(
              padding: EdgeInsets.all(12),
              margin: EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Search',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Icon(Icons.search)
                ],
              ),
            ),
            //message
            Padding(
              padding: EdgeInsets.symmetric(vertical: 25),
              child: Text(
                'everyone flies.. some fly longer tan others',
                style: TextStyle(color: Colors.grey[600]),
              ),
            ),
            //hot pics
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Hot Pics',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  Text(
                    'See all',
                    style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(child:
            ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount:value.shoeShop.length,
                itemBuilder: (context, index) {
                  // get a shoe from shop list
                  Shoe shoe = value.getShoeList()[index];
                  return ShoeTile(
                    shoe: shoe,
                    onTap: ()=>addShoeToCart(shoe),
                  );
                })),
            Padding(
              padding: const EdgeInsets.only(top: 25,left: 25,right: 25),
              child: Divider(
                color: Colors.white,


              ),
            ),
          ],
        ));
  }
}
