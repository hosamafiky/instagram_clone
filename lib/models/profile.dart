class Profile {
  String userName;
  String name;
  int posts, following;
  String followers;
  String avatarUrl;
  String bio;

  Profile({
    this.userName,
    this.name,
    this.following,
    this.followers,
    this.posts,
    this.avatarUrl,
    this.bio,
  });
}

Profile profile = Profile(
  userName: "hosamafiky",
  name: "Hossam Elfikky",
  following: 134,
  followers: "211K",
  posts: 334,
  avatarUrl: "assets/images/m1.jpg",
  bio:
      "Donec convallis rutrum porttitor. Suspendisse viverra,\n libero sed malesuada fringilla, lorem mi placerat nisl, ac.",
);
