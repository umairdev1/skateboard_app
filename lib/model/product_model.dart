class Product {
  final String desc, image, name;
  final double star, price;

  Product({
    required this.name,
    required this.image,
    required this.desc,
    required this.star,
    required this.price,
  });
}

List productinfo = [
  Product(
    image: 'assets/images/skateboard1.png',
    desc:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    name: 'Murdoc',
    star: 4.8,
    price: 150,
  ),
  Product(
    image: 'assets/images/skateboard2.webp',
    desc:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    name: 'Scheggia',
    star: 4.5,
    price: 100,
  ),
  Product(
    image: 'assets/images/skateboard3.webp',
    desc:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    name: 'Astro',
    star: 4.6,
    price: 130,
  ),
  Product(
    image: 'assets/images/skateboard4.webp',
    desc:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    name: 'Samurai',
    star: 4.8,
    price: 150,
  ),
];
