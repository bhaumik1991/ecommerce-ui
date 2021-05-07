import 'package:flutter/material.dart';

class AllItems extends StatelessWidget {
  final String itemImage;
  final int itemPrice;
  final String itemName;
  final String itemQuanty;

  const AllItems({
  Key key,
  this.itemImage,
  this.itemPrice,
  this.itemName,
  this.itemQuanty,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      itemImage,
                    )
                ),
                borderRadius: BorderRadius.circular(60)
            ),
          ),
          SizedBox(width: 15,),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Rs $itemPrice",
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),
              ),
              Text(
                itemName,
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 5,),
              Container(
                height: 25,
                width: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(width: 1.0, color: Colors.black),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    itemQuanty,
                    style: TextStyle(
                        color: Colors.grey
                    ),
                  ),
                ),
              )
            ],
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 15, top: 30),
            child: GestureDetector(
              onTap: (){},
              child: Text("Add to cart"),
            ),
          )
        ],
      ),
    );
  }
}
