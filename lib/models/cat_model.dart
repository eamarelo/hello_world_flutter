class Cat {

  String imageURL;

  Cat(this.imageURL);
  Cat.fromJSON(Map<String, dynamic> json){
    imageURL = json['file'];
  }
  @override
  String toString() {
    return 'Cat{imageURL: $imageURL}';
  }

}