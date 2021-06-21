class Destination {
  String destName;
  String destAddress;
  String destCountry;
  double destPrice;
  String destDescription;
  String destImg;

  Destination(this.destName, this.destAddress, this.destCountry,
      this.destDescription, this.destPrice, this.destImg);
}

List<Destination> destinationsList = [
  Destination(
      'Bali White Temple',
      'Kuta Utara',
      'Bali',
      'Modern destinations, with sky landscape, Simple Building, and perfect for photos.',
      200,
      'assets/img/dest1.jpg'),
  Destination(
      'Villa Beach',
      'Kuta',
      'Bali',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed scelerisque nisl vel nisl sollicitudin iaculis. Donec eget sem a urna sagittis feugiat. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla facilisi. Ut tincidunt nisi massa, vel sollicitudin ante hendrerit et. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Donec interdum venenatis mattis. Etiam eu augue vitae dui eleifend mattis a at enim. Morbi porttitor tortor sit amet nisl tincidunt sagittis. Sed tincidunt vel augue at ultricies. Nullam eget gravida lorem. Vestibulum odio lacus, facilisis vitae neque vel, imperdiet tincidunt libero.',
      120,
      'assets/img/dest2.jpg'),
  Destination(
      'Villa Sabaya',
      'Kacematan',
      'Bali',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed scelerisque nisl vel nisl sollicitudin iaculis. Donec eget sem a urna sagittis feugiat. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla facilisi. Ut tincidunt nisi massa, vel sollicitudin ante hendrerit et. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Donec interdum venenatis mattis. Etiam eu augue vitae dui eleifend mattis a at enim. Morbi porttitor tortor sit amet nisl tincidunt sagittis. Sed tincidunt vel augue at ultricies. Nullam eget gravida lorem. Vestibulum odio lacus, facilisis vitae neque vel, imperdiet tincidunt libero.',
      350,
      'assets/img/dest3.jpg'),
  Destination(
      'Luxury Bali Villa',
      'Blahbatuh',
      'Bali',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed scelerisque nisl vel nisl sollicitudin iaculis. Donec eget sem a urna sagittis feugiat. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla facilisi. Ut tincidunt nisi massa, vel sollicitudin ante hendrerit et. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Donec interdum venenatis mattis. Etiam eu augue vitae dui eleifend mattis a at enim. Morbi porttitor tortor sit amet nisl tincidunt sagittis. Sed tincidunt vel augue at ultricies. Nullam eget gravida lorem. Vestibulum odio lacus, facilisis vitae neque vel, imperdiet tincidunt libero.',
      1200,
      'assets/img/dest4.jpg'),
];
