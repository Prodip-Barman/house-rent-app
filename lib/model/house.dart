class House{
  String name;
  String address;
  String imageUrl;

  House(this.name, this.address, this.imageUrl);

  static List<House> generateRecommended() {
    return [
      House("The Moon House", "P445, Kalibari, Thakurgaon", "assets/images/house01.jpeg"),
      House("The Square Garden", "P654, Sarkerpara, Thakurgaon", "assets/images/house02.jpeg"),
    ];
  }

  static List<House> generateBestOffer() {
    return [
      House("The Moon House", "P445, Kalibari, Thakurgaon", "assets/images/offer01.jpeg"),
      House("The Square Garden", "P654, Sarkerpara, Thakurgaon", "assets/images/offer02.jpeg"),
    ];
  }
}