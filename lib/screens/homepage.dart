import 'package:ecommerce_ui/models/all_items.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      drawer: Drawer(),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Search items",
                        hintStyle: TextStyle(
                            color: Colors.black
                        ),
                        suffixIcon: Icon(Icons.search),
                        border: OutlineInputBorder()
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Row(
                  children: [
                    Container(
                      width: 335,
                      height: 40,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 111.6,
                                height: 40,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                              "Vegetables",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                width: 111.6,
                                height: 40,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                              "Fruits",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                width: 111.6,
                                height: 40,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                              "View All",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20,),
                AllItems(
                  itemImage: "assets/corn.png",
                  itemPrice: 15,
                  itemName: "Sweet corn",
                  itemQuanty: "1 KG",
                ),
                SizedBox(height: 30,),
                AllItems(
                  itemImage: "assets/avocado.jpg",
                  itemPrice: 250,
                  itemName: "Avocado",
                  itemQuanty: "1 KG",
                ),
                SizedBox(height: 30,),
                AllItems(
                  itemImage: "assets/apple.jpg",
                  itemPrice: 180,
                  itemName: "Apple",
                  itemQuanty: "1 KG",
                ),
                SizedBox(height: 30,),
                AllItems(
                  itemImage: "assets/wheat.png",
                  itemPrice: 50,
                  itemName: "Wheat/Rice Flour",
                  itemQuanty: "1 KG",
                ),
                SizedBox(height: 30,),
                AllItems(
                  itemImage: "assets/olive-oil.jpg",
                  itemPrice: 200,
                  itemName: "Olive oil",
                  itemQuanty: "1 L",
                ),
                SizedBox(height: 30,),
                AllItems(
                  itemImage: "assets/snacks.png",
                  itemPrice: 35,
                  itemName: "Potato chips",
                  itemQuanty: "250 gm",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.location_on),
          Text(
              "Madiwala, Bangalore-000000",
            style: TextStyle(
              fontSize: 15
            ),
          ),
        ],
      ),
      backgroundColor: Colors.green,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Icon(
            Icons.person,
            size: 30,
          ),
        ),
      ],
    );
  }
}
