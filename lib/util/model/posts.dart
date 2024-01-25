class Posts {
  String name;
  String postText;
  String imageURL;
  String userIcon;

  // Constructor
  Posts({required this.name, required this.postText, required this.imageURL,required this.userIcon});

  
  String get getName => name;
  set data(String name) => this.name = name; 

  
  String get getPostText => postText;
  set setPostText(String postText) => this.postText = postText;

  
  String get getImageURL => imageURL;
  set setImageURL(String imageURL) => this.imageURL = imageURL;

  String get getUserIcon => userIcon;
  set setUserIcon(String imageURL) => userIcon = imageURL;
}
