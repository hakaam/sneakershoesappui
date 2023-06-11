import 'package:flutter/material.dart';
import 'package:sneakershopui/models/shoe.dart';

class ShoeTile extends StatelessWidget {
  ShoeTile({required this.shoe,required this.onTap});
  Shoe shoe;
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),



      width: MediaQuery.of(context).size.width-200,
      decoration: BoxDecoration(
          color: Colors.red[100],
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          SizedBox(height: 20,),
          // shoe pic
          ClipRRect(

              borderRadius: BorderRadius.circular(12),
              child: Image.asset(shoe.imagePath)),
          SizedBox(height: 20,),

          // description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              shoe.description,
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),
          SizedBox(height: 22,),

          // Price + Details
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      shoe.name,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      shoe.price,
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                GestureDetector(
                  onTap:onTap,

                  child: Container(

                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12))),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
