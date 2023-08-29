class User {
  final String userName;
  final String userPic;
  bool isLiked;

  User({
    required this.userName,
    required this.userPic,
    this.isLiked = false,
  });

  static List<User> userList = [
    User(userName: "ILias Bis", userPic: "lib/images/image1.jpg"),
    User(userName: "Mohammed", userPic: "lib/images/image2.jpg"),
    User(userName: "Abdo", userPic: "lib/images/image3.jpg"),
    User(userName: "ILias Bis", userPic: "lib/images/image18.jpg"),
    User(userName: "Shadow", userPic: "lib/images/image4.jpg"),
    User(userName: "Mouad", userPic: "lib/images/image6.jpg"),
    User(userName: "ILias Bis", userPic: "lib/images/image16.jpg"),
    User(userName: "Moughit", userPic: "lib/images/image7.jpg"),
    User(userName: "ILias Bis", userPic: "lib/images/image20.jpg"),
    User(userName: "Lferda", userPic: "lib/images/image8.jpg"),
    User(userName: "Spoo", userPic: "lib/images/image9.jpg"),
    User(userName: "ILias Bis", userPic: "lib/images/image15.jpg"),
    User(userName: "Windows 9", userPic: "lib/images/image13.jpg"),
    User(userName: "ILias Bis", userPic: "lib/images/image19.jpg"),
    User(userName: "Sir tneass", userPic: "lib/images/image11.jpg"),
    User(userName: "Mustapha", userPic: "lib/images/image12.jpg"),
    User(userName: "ILias Bis", userPic: "lib/images/image14.jpg"),
    User(userName: "ILias Bis", userPic: "lib/images/image21.jpg"),
    User(userName: "Simo", userPic: "lib/images/image5.jpg"),
    User(userName: "ILias Bis", userPic: "lib/images/image17.jpg"),
    User(userName: "Jocker", userPic: "lib/images/image10.jpg"),
    User(userName: "ILias Bis", userPic: "lib/images/image22.jpg"),
    User(userName: "ILias Bis", userPic: "lib/images/image23.jpg"),
    User(userName: "ILias Bis", userPic: "lib/images/image24.jpg"),
  ];
}
