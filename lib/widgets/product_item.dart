import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key, required this.image, required this.name, required this.rate, required this.price, required this.ratecount, required this.onTap,required this.icon
  });
final String image;
final String name;
final String rate;
final String price;
final String ratecount;
final Function()? onTap;
final Widget icon;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Container(
                  height: 175,
                  width: 175,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Image.asset(image, width: 136),
                ),
                Positioned(
                  bottom: 6,
                  right: 5,
                  child: GestureDetector(
                    onTap: onTap,
                    child: CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.white,
                      child: icon,
                    ),
                  ),
                ),
              ],
            ),

          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.star,color: Colors.orange,size: 18,),
                  SizedBox(width: 5,),
                  Text("$rate ($ratecount)",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 18),),
                ],
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(left: 13.0),
                child: Text("\$$price",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
              ),
              SizedBox(height: 10,),
            ],
          )
        ],
      ),
    );
  }
}