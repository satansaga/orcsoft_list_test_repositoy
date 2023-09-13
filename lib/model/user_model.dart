import 'dart:convert';

User usersFromJson(String str) => User.fromJson(json.decode(str));

String usersToJson(User data) => json.encode(data.toJson());

class User {
    List<UserData> userList = [];
    User({
        required this.userList,
    });

    factory User.fromJson(Map<String, dynamic> json) => User(
        userList: List<UserData>.from(json["results"].map((x) => UserData.fromJson(x)))
    );

    Map<String, dynamic> toJson() => {
        "results": List<dynamic>.from(userList.map((x) => x.toJson())),
    };
}

class UserData {
    String gender;
    Name name;
    String email;
    Dob dob;
    String phone;
    String cell;
    Picture picture;

    UserData({
        required this.gender,
        required this.name,
        required this.email,
        required this.dob,
        required this.phone,
        required this.cell,
        required this.picture,
    });

    factory UserData.fromJson(Map<String, dynamic> json) => UserData(
        gender: json["gender"],
        name: Name.fromJson(json["name"]),
        email: json["email"],
        dob: Dob.fromJson(json["dob"]),
        phone: json["phone"],
        cell: json["cell"],
        picture: Picture.fromJson(json["picture"]),
    );

    Map<String, dynamic> toJson() => {
        "gender": gender,
        "name": name.toJson(),
        "email": email,
        "dob": dob.toJson(),
        "phone": phone,
        "cell": cell,
        "picture": picture.toJson(),
    };
}

class Dob {
    DateTime date;
    int age;

    Dob({
        required this.date,
        required this.age,
    });

    factory Dob.fromJson(Map<String, dynamic> json) => Dob(
        date: DateTime.parse(json["date"]),
        age: json["age"],
    );

    Map<String, dynamic> toJson() => {
        "date": date.toIso8601String(),
        "age": age,
    };
}

class Name {
    String title;
    String first;
    String last;

    Name({
        required this.title,
        required this.first,
        required this.last,
    });

    factory Name.fromJson(Map<String, dynamic> json) => Name(
        title: json["title"],
        first: json["first"],
        last: json["last"],
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "first": first,
        "last": last,
    };
}

class Picture {
    String large;
    String medium;
    String thumbnail;

    Picture({
        required this.large,
        required this.medium,
        required this.thumbnail,
    });

    factory Picture.fromJson(Map<String, dynamic> json) => Picture(
        large: json["large"],
        medium: json["medium"],
        thumbnail: json["thumbnail"],
    );

    Map<String, dynamic> toJson() => {
        "large": large,
        "medium": medium,
        "thumbnail": thumbnail,
    };
}
