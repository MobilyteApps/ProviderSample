class ApiSettingResponse {
  String msg;
  bool status;
  String appName;
  String appLogo;
  String selectedTheme;
  String splash;
  String homeView;
  String backgroundColor;
  String foregroundColor;
  String textColor;
  String fontFamily;
  String recipePlgin;
  String facebookLink;
  String youtubeLink;
  String twitterLink;
  String pinterestLink;
  String instagramLink;
  String selectedBlogs;

  ApiSettingResponse(
      {this.msg,
        this.status,
        this.appName,
        this.appLogo,
        this.selectedTheme,
        this.splash,
        this.homeView,
        this.backgroundColor,
        this.foregroundColor,
        this.textColor,
        this.fontFamily,
        this.recipePlgin,
        this.facebookLink,
        this.youtubeLink,
        this.twitterLink,
        this.pinterestLink,
        this.instagramLink,
        this.selectedBlogs});

  ApiSettingResponse.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
    status = json['status'];
    appName = json['app_name'];
    appLogo = json['app_logo'];
    selectedTheme = json['selected_theme'];
    splash = json['splash'];
    homeView = json['home_view'];
    backgroundColor = json['background_color'];
    foregroundColor = json['foreground_color'];
    textColor = json['text_color'];
    fontFamily = json['font_family'];
    recipePlgin = json['recipe_plgin'];
    facebookLink = json['facebook_link'];
    youtubeLink = json['youtube_link'];
    twitterLink = json['twitter_link'];
    pinterestLink = json['pinterest_link'];
    instagramLink = json['instagram_link'];
    selectedBlogs = json['selected_blogs'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['msg'] = this.msg;
    data['status'] = this.status;
    data['app_name'] = this.appName;
    data['app_logo'] = this.appLogo;
    data['selected_theme'] = this.selectedTheme;
    data['splash'] = this.splash;
    data['home_view'] = this.homeView;
    data['background_color'] = this.backgroundColor;
    data['foreground_color'] = this.foregroundColor;
    data['text_color'] = this.textColor;
    data['font_family'] = this.fontFamily;
    data['recipe_plgin'] = this.recipePlgin;
    data['facebook_link'] = this.facebookLink;
    data['youtube_link'] = this.youtubeLink;
    data['twitter_link'] = this.twitterLink;
    data['pinterest_link'] = this.pinterestLink;
    data['instagram_link'] = this.instagramLink;
    data['selected_blogs'] = this.selectedBlogs;
    return data;
  }
}