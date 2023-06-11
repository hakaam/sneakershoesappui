import 'package:flutter/material.dart';
import 'package:sneakershopui/components/bottom_nav_bar.dart';
import 'package:sneakershopui/pages/shope_page.dart';

import 'cart_page.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  final List<Widget> _pages=[
    ShopePage(),
    CartPage(),




  ];
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        bottomNavigationBar: MyBottomNavBar(
          onTabChange: (index)=>navigateBottomBar(index),
        ),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Builder(
            builder: (context)=>IconButton(
                onPressed: (){
                  Scaffold.of(context).openDrawer();
                },
                icon: Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Icon(Icons.menu,
                    color: Colors.black,

                  ),
                )),


          )
        ),
        drawer: Drawer(
          backgroundColor: Colors.grey[900],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [

                  DrawerHeader(child: Image.asset('images/nikelogo.jpg',height: 50,)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Divider(
                      color: Colors.grey[800],

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25,bottom: 25),
                    child: ListTile(
                      leading: Icon(Icons.home,color: Colors.white,),
                      title: Text('Home',
                        style: TextStyle(
                          color: Colors.white,



                        ),

                      ),



                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: ListTile(
                      leading: Icon(Icons.info,color: Colors.white,),
                      title: Text('About',
                        style: TextStyle(
                          color: Colors.white,



                        ),

                      ),



                    ),
                  ),
                ],



              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: ListTile(
                  leading: Icon(Icons.logout,color: Colors.white,),
                  title: Text('Logout',
                    style: TextStyle(
                      color: Colors.white,



                    ),

                  ),



                ),
              )

              
            ],
            
            
          ),
          
        ),
       
        body: _pages[_selectedIndex],


      );

    }
  }
