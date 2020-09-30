import 'package:instagram_clone/models/models.dart';

class Profile {
  final String userName;
  final String name;
  final int posts, following;
  final String followers;
  final String bio;
  final Story story;
  final String avatarUrl;
  final List<Post> myPosts;
  final String postImage;
  final String postCaption;
  final List<Favour> favours;

  Profile({
    this.userName,
    this.name,
    this.following,
    this.followers,
    this.avatarUrl,
    this.posts,
    this.bio,
    this.myPosts,
    this.story,
    this.postImage,
    this.postCaption,
    this.favours,
  });
}
