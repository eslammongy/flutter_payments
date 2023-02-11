class Clock {
  final int id;
  final String name;
  final String price;
  final String imageUrl;
  final bool isFavorite;
  final String subMenu;

  Clock({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.isFavorite,
    required this.subMenu,
  });
}

final List<Clock> listClocks = [
  Clock(
    id: 1,
    name: 'Clock',
    price: '79.00',
    imageUrl: 'assets/images/pexels1.jpg',
    isFavorite: true,
    subMenu: 'Clock_box',
  ),
  Clock(
    id: 2,
    name: 'Clock',
    price: '94.00',
    imageUrl: 'assets/images/pexels2.jpg',
    isFavorite: false,
    subMenu: 'Clock_box',
  ),
  Clock(
    id: 5,
    name: 'Clock',
    price: '104.00',
    imageUrl: 'assets/images/pexels3.jpg',
    isFavorite: false,
    subMenu: 'Clock_box',
  ),
  Clock(
    id: 6,
    name: 'Clock',
    price: '94.00',
    imageUrl: 'assets/images/pexels4.jpg',
    isFavorite: false,
    subMenu: 'Clock_box',
  ),
  Clock(
    id: 3,
    name: 'Clock',
    price: '99.00',
    imageUrl: 'assets/images/pexels5.jpg',
    isFavorite: false,
    subMenu: 'Clock_box',
  ),
  Clock(
    id: 4,
    name: 'Clock',
    price: '99.00',
    imageUrl: 'assets/images/pexels6.jpg',
    isFavorite: true,
    subMenu: 'Clock_box',
  ),
];
