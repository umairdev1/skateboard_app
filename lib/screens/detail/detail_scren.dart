import 'package:flutter/material.dart';
import 'package:skateboard_app/model/product_model.dart';
import 'package:skateboard_app/utilities/colors.dart';

class DetailScreen extends StatefulWidget {
  final Product product;
  const DetailScreen({Key? key, required this.product}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
          child: SingleChildScrollView(
            child: Column(
              children: [
                //appbar
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: kWhiteClr,
                        size: 20,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "Back",
                      style: TextStyle(
                        color: kWhiteClr,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.favorite_rounded,
                        color: kWhiteClr,
                        size: 20,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  thickness: 2,
                  color: kPrimaryClr,
                ),
                const SizedBox(
                  height: 20,
                ),
                //name and price
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.product.name,
                      style: const TextStyle(
                        color: kWhiteClr,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "\$${widget.product.price}",
                      style: const TextStyle(
                        color: kWhiteClr,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                //rating
                Row(
                  children: [
                    Text(
                      "${widget.product.star}",
                      style: const TextStyle(
                        color: kPrimaryClr,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 4.0,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 20,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Image.asset(
                      widget.product.image,
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                    Column(
                      children: [
                        const Text(
                          "Size",
                          style: TextStyle(
                            color: kPrimaryClr,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const CircleAvatar(
                          backgroundColor: kPrimaryClr,
                          child: Center(
                            child: Text(
                              "140 CM",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: kWhiteClr,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          "Skin",
                          style: TextStyle(
                            color: kPrimaryClr,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CircleAvatar(
                          backgroundColor: kPrimaryClr,
                          backgroundImage: AssetImage(widget.product.image),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: const [
                    Text(
                      "Overview",
                      style: TextStyle(
                        color: kWhiteClr,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  widget.product.desc,
                  style: const TextStyle(
                    height: 1.6,
                    color: kPrimaryClr,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                MaterialButton(
                  height: 55,
                  minWidth: double.infinity,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  color: kWhiteClr,
                  onPressed: () {},
                  child: const Text(
                    "Buy Now",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
