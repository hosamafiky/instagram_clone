import '../models/models.dart';

// Stories..
final List<Story> stories = [
  Story(
    isViewed: false,
  ),
  Story(
    isViewed: true,
  ),
  Story(
    isViewed: false,
  ),
  Story(
    isViewed: true,
  ),
  Story(
    isViewed: true,
  ),
  Story(
    isViewed: false,
  ),
  Story(
    isViewed: false,
  ),
];

// Favours ..
final List<Favour> favours = [
  Favour(
    title: "Winter",
    bgUrl: "assets/images/winter.jpg",
  ),
  Favour(
    title: "Baking",
    bgUrl: "assets/images/baking.jpg",
  ),
  Favour(
    title: "Summer",
    bgUrl: "assets/images/summer.jpeg",
  ),
  Favour(
    title: "Travelling",
    bgUrl: "assets/images/travelling.jpeg",
  ),
  Favour(
    title: "Vacation",
    bgUrl: "assets/images/vacation.jpeg",
  ),
];
// Posts..

// Profiles..
final List<Profile> profiles = [
  Profile(
    userName: "greeg",
    name: "Greeg",
    following: 496,
    posts: 15,
    followers: "14K",
    bio: "Lorem ipsum dolor sit amet.",
    avatarUrl: "assets/images/m1.jpg",
    myPosts: [],
    story: stories[0],
    postImage: "assets/images/p2.jpeg",
    postCaption: "Aenean condimentum fermentum augue, vitae.",
  ),
  Profile(
    userName: "asmaa",
    name: "Asmaa",
    following: 129,
    posts: 24,
    followers: "89K",
    bio: "Vestibulum lacinia porta sem, ut.",
    avatarUrl: "assets/images/w1.jpg",
    myPosts: [],
    story: stories[1],
    postImage: "assets/images/p1.jpeg",
    postCaption: "Pellentesque nunc ipsum, interdum non.",
  ),
  Profile(
    userName: "zaki",
    name: "Zaki",
    following: 485,
    posts: 16,
    followers: "163K",
    bio: "Phasellus non nisi eget libero.",
    avatarUrl: "assets/images/m2.jpg",
    myPosts: [],
    story: stories[2],
    postImage: "assets/images/p3.jpeg",
    postCaption: "Etiam iaculis magna nisl, vitae.",
  ),
  Profile(
    userName: "nikkita",
    name: "Nikkita",
    following: 244,
    posts: 47,
    followers: "128K",
    bio: "Donec quis vulputate nulla, at.",
    avatarUrl: "assets/images/w2.jpg",
    myPosts: [],
    story: stories[3],
    postImage: "assets/images/p4.jpeg",
    postCaption: "Sed id pellentesque orci. Curabitur.",
  ),
  Profile(
    userName: "bartosz",
    name: "Bartosz",
    following: 389,
    posts: 39,
    followers: "186K",
    bio: "Pellentesque varius luctus turpis et.",
    avatarUrl: "assets/images/m3.jpg",
    myPosts: [],
    story: stories[4],
    postImage: "assets/images/p5.jpg",
    postCaption: "In maximus, nulla sollicitudin condimentum.",
  ),
  Profile(
    userName: "gabriela",
    name: "Gabriela",
    following: 214,
    posts: 22,
    followers: "51K",
    bio: "Suspendisse accumsan, risus condimentum tempus.",
    avatarUrl: "assets/images/w3.jpeg",
    myPosts: [],
    story: stories[5],
    postImage: "assets/images/p6.jpeg",
    postCaption: "Aliquam egestas metus vel ante.",
  ),
  Profile(
    userName: "devon",
    name: "Devon",
    following: 65,
    posts: 7,
    followers: "53K",
    bio: "Curabitur fringilla lectus eu metus.",
    avatarUrl: "assets/images/m4.jpg",
    myPosts: [],
    story: stories[6],
    postImage: "assets/images/p7.jpeg",
    postCaption: "Donec nec tempor eros. Nunc.",
  ),
];
