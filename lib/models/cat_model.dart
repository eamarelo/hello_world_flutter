class Cat {
  String imageURL;

  Cat(this.imageURL);
  Cat.fromJSON(Map<String, dynamic> json) {
    print(json);
    imageURL = json['file'];
  }
  @override
  String toString() {
    return 'Cat{imageURL: $imageURL}';
  }
}
