import 'package:f_storee/feuters/app_colors.dart';
import 'package:f_storee/model/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/banner_widget.dart';
import '../widgets/cart_widget.dart';
import '../widgets/categoris_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> items = [
    "assets/bannars/Slider 1.png",
    "assets/bannars/Slider 2.png",
    "assets/bannars/Slider 3.png",
  ];
  List<CategoryMode> categories = [
    CategoryMode(name: "Fruits", image: "assets/category/Fruits.png"),
    CategoryMode(name: "Milk & Eggs", image: "assets/category/Milks.png"),
    CategoryMode(name: "Beverages", image: "assets/category/Beverages.png"),
    CategoryMode(name: "Laundry", image: "assets/category/Laundry.png"),
    CategoryMode(name: "Vegetables", image: "assets/category/Vegetables.png"),
  ];
  List<ProductMode> product = [
    ProductMode(
      name: "Banana",
      image: "assets/fruits/banana.png",
      price: "3.99",
      rate: "4.8",
      reteCount: "(287)",
    ),
    ProductMode(
      name: "Orange",
      image: "assets/fruits/Orange.png",
      price: "2.99",
      rate: "4.8",
      reteCount: "(287)",
    ),
    ProductMode(
      name: "Pepper",
      image: "assets/fruits/Pepper.png",
      price: "3.99",
      rate: "4.8",
      reteCount: "(287)",
    ),
    ProductMode(
      name: "Egg",
      image: "assets/category/Milks.png",
      price: "3.99",
      rate: "4.8",
      reteCount: "(287)",
    ),
  ];
  List basketList = [];

  void toggleSelected(ProductMode porduct) {
    setState(() {
      if (basketList.contains(porduct)) {
        basketList.remove(porduct);
      } else {
        basketList.add(porduct);
      }
    });
  }

  bool isSelected(ProductMode product) => basketList.contains(product);

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox.shrink(),
        leadingWidth: 0,
        title: Row(
          children: [
            SvgPicture.asset("assets/Icons/Motocycle.svg"),
            SizedBox(width: 10),
            Text("61 Hopper street....", style: TextStyle(fontSize: 19)),
            SizedBox(width: 5),
            Icon(Icons.keyboard_arrow_down_rounded, size: 30),
            Spacer(),
            SvgPicture.asset("assets/Icons/Basket.svg"),
          ],
        ),
      ),
      body: Column(
        children: [
          ///banner
          BannerWidget(items: items),

          ///categories
          Categories(categories: categories),

          SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Fruits",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  "See all",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: AppColors.primaryColor,
                  ),
                ),
              ],
            ),
          ),


          SizedBox(height: 20),

          ///products
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ProductListView(
              products: product,
              onToggle: toggleSelected,
              isSelected: isSelected,
            ),
          ),

          Spacer(),

          /// cart widget
          CartWidget(basketList: basketList),

          SizedBox(height: 90),
        ],
      ),
    );
  }
}
