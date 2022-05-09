class Category {
  final String name;
  final bool active;

  Category({
    required this.name,
    required this.active,
  });
}

List categorytitle = [
  Category(
    name: 'All',
    active: true,
  ),
  Category(
    name: 'Street',
    active: false,
  ),
  Category(
    name: 'Cruiser',
    active: false,
  ),
  Category(
    name: 'Electric',
    active: false,
  ),
  Category(
    name: 'Long',
    active: false,
  ),
];
