import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:instagram_clone/widgets/appBar.dart';
import '../models/post.dart';
import '../models/story.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool bookmark = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBars(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Divider(),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Stories",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Watch All",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 120.0,
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: stories.length,
                  itemBuilder: (context, index) {
                    return stories[index].isViewed
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 80.0,
                                height: 80.0,
                                margin: EdgeInsets.symmetric(horizontal: 15.0),
                                child: CircleAvatar(
                                  radius: 40.0,
                                  backgroundImage:
                                      AssetImage(stories[index].avatarUrl),
                                ),
                              ),
                              Text(
                                stories[index].name.toLowerCase(),
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ],
                          )
                        : Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 87.0,
                                height: 87.0,
                                margin: EdgeInsets.symmetric(horizontal: 15.0),
                                padding: EdgeInsets.all(2.0),
                                decoration: BoxDecoration(
                                  //border: Border.all(
                                  //width: 3.0, color: Color(0xFF8E44AD)),
                                  borderRadius: BorderRadius.circular(43.5),
                                  gradient: LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                        Color(0xFF515BD4),
                                        Color(0xFF8134AF),
                                        Color(0xFFDD2A7B),
                                        Color(0xFFFEDA77),
                                        Color(0xFFF58529),
                                      ]),
                                ),
                                child: CircleAvatar(
                                  radius: 40.0,
                                  backgroundImage:
                                      AssetImage(stories[index].avatarUrl),
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                stories[index].name.toLowerCase(),
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ],
                          );
                  },
                ),
              ),
              Container(
                color: Colors.white,
                width: double.infinity,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: posts.length,
                  itemBuilder: (context, i) {
                    return Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 12.0, vertical: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 25.5,
                                    backgroundColor: Colors.black,
                                    child: CircleAvatar(
                                      radius: 25.0,
                                      backgroundImage:
                                          AssetImage(posts[i].userImage),
                                    ),
                                  ),
                                  SizedBox(width: 10.0),
                                  Text(
                                    posts[i].userName.toLowerCase(),
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.0),
                                  ),
                                ],
                              ),
                              IconButton(
                                icon: Icon(SimpleLineIcons.options),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                        FadeInImage(
                          image: AssetImage(posts[i].postImage),
                          placeholder:
                              AssetImage("assets/images/placeholder.png"),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  icon: Icon(Ionicons.md_heart_empty),
                                  onPressed: () {},
                                ),
                                IconButton(
                                  icon: Icon(FontAwesome.comment_o),
                                  onPressed: () {},
                                ),
                                IconButton(
                                  icon: Icon(Feather.send),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                            IconButton(
                              icon: bookmark
                                  ? Icon(FontAwesome.bookmark)
                                  : Icon(FontAwesome.bookmark_o),
                              onPressed: () {
                                setState(() {
                                  bookmark = true;
                                });
                              },
                            ),
                          ],
                        ),
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.symmetric(
                              horizontal: 14.0, vertical: 5.0),
                          child: RichText(
                            overflow: TextOverflow.visible,
                            text: TextSpan(children: [
                              TextSpan(
                                text: "Liked by ",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.0,
                                ),
                              ),
                              TextSpan(
                                text: "andtrl, ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 16.0,
                                ),
                              ),
                              TextSpan(
                                text: "mfortress ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 16.0,
                                ),
                              ),
                              TextSpan(
                                text: "and ",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.0,
                                ),
                              ),
                              TextSpan(
                                text: "1,259 others",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 16.0,
                                ),
                              ),
                            ]),
                          ),
                        ),
                        //Caption
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.symmetric(
                              horizontal: 14.0, vertical: 5.0),
                          child: RichText(
                            overflow: TextOverflow.visible,
                            text: TextSpan(children: [
                              TextSpan(
                                text: posts[i].userName.toLowerCase(),
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 16.0,
                                ),
                              ),
                              TextSpan(
                                text: " ${posts[i].caption}",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0,
                                ),
                              ),
                            ]),
                          ),
                        ),
                        //Date
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 14.0),
                          alignment: Alignment.topLeft,
                          child: Text(
                            "September 2020",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
