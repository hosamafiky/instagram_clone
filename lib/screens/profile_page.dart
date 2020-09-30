import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:instagram_clone/data/data.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePage extends StatefulWidget {
  final int index;

  const ProfilePage(this.index);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 1.0,
        shadowColor: Colors.black,
        backgroundColor: Color(0xFFF7F7F7),
        title: Text(
          profiles[widget.index].userName,
          style: TextStyle(
            fontSize: 22.0,
            color: Color(0xFF201D1D),
          ),
        ),
        leading: IconButton(
          iconSize: 30.0,
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xFF201D1D),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              SimpleLineIcons.options,
              color: Color(0xFF201D1D),
            ),
            iconSize: 18.0,
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: EdgeInsets.all(15.0),
                height: 150.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: 110.0,
                        padding: EdgeInsets.all(4.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          //borderRadius: BorderRadius.circular(55),
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color(0xFF515BD4),
                              Color(0xFF8134AF),
                              Color(0xFFDD2A7B),
                              Color(0xFFFEDA77),
                              Color(0xFFF58529),
                            ],
                          ),
                        ),
                        child: CircleAvatar(
                          radius: 54.0,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 50.0,
                            backgroundImage: AssetImage(
                              profiles[widget.index].avatarUrl,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    Expanded(
                      flex: 2,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 12.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        profiles[widget.index].posts.toString(),
                                        style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(height: 3.0),
                                      Text(
                                        "posts",
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        profiles[widget.index]
                                            .followers
                                            .toString(),
                                        style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(height: 3.0),
                                      Text(
                                        "followers",
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        profiles[widget.index]
                                            .following
                                            .toString(),
                                        style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(height: 3.0),
                                      Text(
                                        "following",
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  flex: 6,
                                  child: Container(
                                    height: 35.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      border: Border.all(
                                        width: 1.0,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Message",
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 5.0),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    height: 35.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      border: Border.all(
                                        width: 1.0,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    child: Center(
                                      child: IconButton(
                                        padding: EdgeInsets.all(0.0),
                                        icon: Icon(
                                          Feather.user_check,
                                          color: Colors.black,
                                        ),
                                        iconSize: 30.0,
                                        onPressed: () {},
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 5.0),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    height: 35.0,
                                    padding: EdgeInsets.only(bottom: 7.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      border: Border.all(
                                        color: Colors.grey,
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Center(
                                      child: IconButton(
                                        padding: EdgeInsets.all(0.0),
                                        icon: Icon(
                                          MaterialIcons.arrow_drop_down,
                                          color: Colors.black,
                                        ),
                                        iconSize: 40.0,
                                        onPressed: () {},
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 15.0, right: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      profiles[widget.index].name,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF201D1D),
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      profiles[widget.index].bio,
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 150.0,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(left: 15.0),
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                          ),
                          child: CircleAvatar(
                            radius: 44.0,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 40.0,
                              backgroundImage: AssetImage(
                                "assets/images/IG.jpeg",
                              ),
                              child: IconButton(
                                icon: Icon(Feather.tv, color: Colors.white),
                                iconSize: 30.0,
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          "IGTV",
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      child: VerticalDivider(
                        thickness: 1.0,
                        color: Colors.grey,
                        indent: 40.0,
                        endIndent: 60.0,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 150.0,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: favours.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(right: 10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(2.0),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey,
                                  ),
                                  child: CircleAvatar(
                                    radius: 44.0,
                                    backgroundColor: Colors.white,
                                    child: CircleAvatar(
                                      radius: 40.0,
                                      backgroundImage: AssetImage(
                                        favours[index].bgUrl,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10.0),
                                Text(
                                  favours[index].title,
                                  style: TextStyle(fontSize: 16.0),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 50.0,
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 1.0, color: Colors.grey),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      icon: Icon(MaterialIcons.apps, color: Colors.grey),
                      iconSize: 30.0,
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Feather.list, color: Colors.grey),
                      iconSize: 30.0,
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: SvgPicture.asset(
                        "assets/images/icon.svg",
                        color: Colors.grey,
                        fit: BoxFit.cover,
                      ),
                      //iconSize: 30.0,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                child: GridView.count(
                  crossAxisCount: 3,
                  physics: NeverScrollableScrollPhysics(),
                  mainAxisSpacing: 2.0,
                  shrinkWrap: true,
                  crossAxisSpacing: 2.0,
                  children:
                      List.generate(profiles[widget.index].posts, (index) {
                    return Center(
                      child: Image(
                        image: NetworkImage(
                          'https://picsum.photos/200',
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
