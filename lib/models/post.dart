class Post {
  String userName;
  String userImage;
  String postImage;
  String caption;

  Post({this.userName, this.userImage, this.postImage, this.caption});
}

List<Post> posts = [
  new Post(
    userName: "Gregg",
    userImage: "assets/images/m1.jpg",
    postImage: "assets/images/p2.jpeg",
    caption: "Aenean condimentum fermentum augue, vitae.",
  ),
  new Post(
    userName: "Asmaa",
    userImage: "assets/images/w1.jpg",
    postImage: "assets/images/p1.jpeg",
    caption: "Pellentesque nunc ipsum, interdum non.",
  ),
  new Post(
    userName: "Zaki",
    userImage: "assets/images/m2.jpg",
    postImage: "assets/images/p3.jpeg",
    caption: "Etiam iaculis magna nisl, vitae.",
  ),
  new Post(
    userName: "Nikkita",
    userImage: "assets/images/w2.jpg",
    postImage: "assets/images/p4.jpeg",
    caption: "Sed id pellentesque orci. Curabitur.",
  ),
  new Post(
    userName: "Bartosz",
    userImage: "assets/images/m3.jpg",
    postImage: "assets/images/p5.jpg",
    caption: "In maximus, nulla sollicitudin condimentum.",
  ),
  new Post(
    userName: "Gabriela",
    userImage: "assets/images/w3.jpeg",
    postImage: "assets/images/p6.jpeg",
    caption: "Aliquam egestas metus vel ante.",
  ),
  new Post(
    userName: "Devon",
    userImage: "assets/images/m4.jpg",
    postImage: "assets/images/p7.jpeg",
    caption: "Donec nec tempor eros. Nunc.",
  ),
];
