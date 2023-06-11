
import 'package:provider/provider.dart';
import 'package:sneakershopui/models/cart.dart';
import 'package:sneakershopui/models/shoe.dart';
import 'package:flutter/material.dart';

class CartItem extends StatefulWidget {
   CartItem({Key? key, required this.shoe}) : super(key: key);
  Shoe shoe;
  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void removeItemFromCart(){
    Provider.of<Cart>(context,listen: false).removeItemFromCart(widget.shoe);


  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(8)
        
        
        
      ),
      child: ListTile(
        leading: Image.asset(widget.shoe.imagePath,),
        title: Text(widget.shoe.name),
        subtitle: Text(widget.shoe.price),
        trailing: IconButton(
            onPressed:()=> removeItemFromCart(),
            icon: Icon(Icons.delete,color: Colors.black,)),


      ),
    );
  }
}
