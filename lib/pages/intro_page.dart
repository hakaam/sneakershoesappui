import 'package:flutter/material.dart';
import 'package:sneakershopui/pages/home_page.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey[300],
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(25),
                child: Image.network(
                  'https://logowik.com/content/uploads/images/260_nike.jpg'
                ),
              ),
              SizedBox(
                height: 48,
              ),
              Text(
                'Just Do It',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                textAlign: TextAlign.center,
                'Brand new sneakers and custom kicks made premium quality',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 24,
              ),
              GestureDetector(
                onTap: ()=>Navigator.push(context,MaterialPageRoute(
                    builder: (_)=>HomePage())),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12)


                  ),
                  padding: EdgeInsets.all(25),
                  child: Center(
                      child: Text('Shop Now',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,


                        ),
                      ),


                  ),



                ),
              )
              
            ],
          ),
        ),
      ),
    );
  }
}
