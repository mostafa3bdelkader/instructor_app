class Instructor {
  late int charId;
  late String name;
  late String nickName;
  late String image;
  late String overview;
  late List<Class> classes;
  late List<Post> community;

  Instructor.fromJson(Map<String, dynamic> json) {
    charId = json["char_id"];
    name = json["name"];
    nickName = json["nickname"];
    image = json["img"];
    overview = json["occupation"];
    classes = List<Class>.from(json["classes"].map((x) => Class.fromJson(x)));
    community =
        List<Post>.from(json["community"].map((x) => Class.fromJson(x)));
  }
}

class Class {
  late String videoUrl;
  late String title;
  late String subTitle;
  Class.fromJson(Map<String, dynamic> json) {
    videoUrl = json["videoUrl"];
    title = json["title"];
    subTitle = json["subtitle"];
  }
}

class Post {
  late String title;
  late String subtitle;
  late String imageUrl;
  late String text;

  Post.fromJson(Map<String, dynamic> json) {
    title = json["title"];
    subtitle = json["subtitle"];
    imageUrl = json["imageUrl"];
    text = json["text"];
  }
}
