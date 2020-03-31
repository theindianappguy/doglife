import 'package:doglife/models/news_model.dart';

List<NewsModel> getNews() {
  List<NewsModel> news = new List<NewsModel>();
  NewsModel newsModel = new NewsModel();

//1
  newsModel.newsImgUrl =
      "https://images.unsplash.com/photo-1534361960057-19889db9621e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80";
  newsModel.title = "Dogs Are Even More Like Us";
  newsModel.desc =
      "Lorem ipsum dolor sit amet, consectetur adipicing elit, sed do eiusmod tempor incididunt utlabore et dolore magna aliqua. Ut ";
  news.add(newsModel);

  newsModel = new NewsModel();

//2
  newsModel.newsImgUrl =
      "https://images.unsplash.com/photo-1544568100-847a948585b9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1867&q=80";
  newsModel.title = "Is Your Dog Super Smart?";
  newsModel.desc =
      "Lorem ipsum dolor sit amet, consectetur adipicing elit, sed do eiusmod tempor incididunt utlabore et dolore magna aliqua. Ut ";
  news.add(newsModel);

  newsModel = new NewsModel();

//3
  newsModel.newsImgUrl =
      "https://images.unsplash.com/photo-1578857182382-c6f9c4dc5bad?ixlib=rb-1.2.1&auto=format&fit=crop&w=1867&q=80";
  newsModel.title = "Do you think dog's are super awesome";
  newsModel.desc =
      "Lorem ipsum dolor sit amet, consectetur adipicing elit, sed do eiusmod tempor incididunt utlabore et dolore magna aliqua. Ut ";
  news.add(newsModel);

  newsModel = new NewsModel();

//2
  newsModel.newsImgUrl =
      "https://images.unsplash.com/photo-1544568100-847a948585b9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1867&q=80";
  newsModel.title = "Is Your Dog Super Smart?";
  newsModel.desc =
      "Lorem ipsum dolor sit amet, consectetur adipicing elit, sed do eiusmod tempor incididunt utlabore et dolore magna aliqua. Ut ";
  news.add(newsModel);

  newsModel = new NewsModel();

//2
  newsModel.newsImgUrl =
      "https://images.unsplash.com/photo-1544568100-847a948585b9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1867&q=80";
  newsModel.title = "Is Your Dog Super Smart?";
  newsModel.desc =
      "Lorem ipsum dolor sit amet, consectetur adipicing elit, sed do eiusmod tempor incididunt utlabore et dolore magna aliqua. Ut ";
  news.add(newsModel);

  newsModel = new NewsModel();

  return news;
}
