import 'package:f_storee/widgets/product_item.dart';
import 'package:flutter/material.dart';

class CategoryMode {
  final String name;
  final String image;

  CategoryMode({required this.name, required this.image});
}

class ProductMode {
  final String name;
  final String image;
  final String price;
  final String rate;
  final String reteCount;

  ProductMode({required this.name, required this.image,required this.price,required this.rate,required this.reteCount});
}

class ProductListView extends StatelessWidget {
  final List<ProductMode> products;
  final Function(ProductMode) onToggle;
  final bool Function(ProductMode) isSelected;

  const ProductListView({
    Key? key,
    required this.products,
    required this.onToggle,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: products.map((item) {
          return ProductItem(
            image: item.image,
            name: item.name,
            rate: item.rate,
            price: item.price,
            ratecount: item.reteCount,
            onTap: () => onToggle(item),
            icon: isSelected(item) ? Icon(Icons.remove) : Icon(Icons.add),
          );
        }).toList(),
      ),
    );
  }
}

