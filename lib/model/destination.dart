class Destination {
  final String destName;
  final String destAddress;
  final String destCountry;
  final double destPrice;
  final String destDescription;
  final String destImg;

  const Destination(
      {required this.destName,
      required this.destAddress,
      required this.destCountry,
      required this.destDescription,
      required this.destPrice,
      required this.destImg});
}

List<Destination> destinationsList = [
  Destination(
      destName: 'Bali White Temple',
      destAddress: 'Kuta Utara',
      destCountry: 'Bali Island',
      destDescription:
          'Modern destinations, with sky landscape, Simple Building, and perfect for photos.',
      destPrice: 200,
      destImg: 'assets/img/dest1.jpg'),
  Destination(
      destName: 'Villa Beach',
      destAddress: 'Masopalomas',
      destCountry: 'Bali Island',
      destDescription:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed scelerisque nisl vel nisl sollicitudin iaculis. Donec eget sem a urna sagittis feugiat. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla facilisi. Ut tincidunt nisi massa, vel sollicitudin ante hendrerit et. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Donec interdum venenatis mattis. Etiam eu augue vitae dui eleifend mattis a at enim. Morbi porttitor tortor sit amet nisl tincidunt sagittis. Sed tincidunt vel augue at ultricies. Nullam eget gravida lorem. Vestibulum odio lacus, facilisis vitae neque vel, imperdiet tincidunt libero.',
      destPrice: 120,
      destImg: 'assets/img/dest2.jpg'),
  Destination(
      destName: 'Villa Sabaya',
      destAddress: 'Kacematan',
      destCountry: 'Bali Island',
      destDescription:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed scelerisque nisl vel nisl sollicitudin iaculis. Donec eget sem a urna sagittis feugiat. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla facilisi. Ut tincidunt nisi massa, vel sollicitudin ante hendrerit et. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Donec interdum venenatis mattis. Etiam eu augue vitae dui eleifend mattis a at enim. Morbi porttitor tortor sit amet nisl tincidunt sagittis. Sed tincidunt vel augue at ultricies. Nullam eget gravida lorem. Vestibulum odio lacus, facilisis vitae neque vel, imperdiet tincidunt libero.',
      destPrice: 350,
      destImg: 'assets/img/dest3.jpg'),
  Destination(
      destName: 'Luxury Bali Villa',
      destAddress: 'Blahbatuh',
      destCountry: 'Bali Island',
      destDescription:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed scelerisque nisl vel nisl sollicitudin iaculis. Donec eget sem a urna sagittis feugiat. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla facilisi. Ut tincidunt nisi massa, vel sollicitudin ante hendrerit et. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Donec interdum venenatis mattis. Etiam eu augue vitae dui eleifend mattis a at enim. Morbi porttitor tortor sit amet nisl tincidunt sagittis. Sed tincidunt vel augue at ultricies. Nullam eget gravida lorem. Vestibulum odio lacus, facilisis vitae neque vel, imperdiet tincidunt libero.',
      destPrice: 1200,
      destImg: 'assets/img/dest4.jpg'),
];
