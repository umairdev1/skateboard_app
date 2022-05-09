import 'package:flutter/material.dart';
import 'package:skateboard_app/model/product_model.dart';
import 'package:skateboard_app/utilities/colors.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final VoidCallback press;
  const ProductCard({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        decoration: BoxDecoration(
            color: kPrimaryClr, borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset(
                product.image,
                height: 200,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  product.name,
                  style: TextStyle(
                    color: kWhiteClr,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Text(
                "\$${product.price}",
                style: TextStyle(
                  color: kWhiteClr,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
