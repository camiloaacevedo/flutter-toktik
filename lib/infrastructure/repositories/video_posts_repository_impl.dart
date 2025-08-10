import 'package:toktik/domain/datasources/video_posts_datasource.dart';
import 'package:toktik/domain/entites/video_post.dart';
import 'package:toktik/domain/repositories/video_posts_repository.dart';



class VideoPostsRepositoryImpl implements VideoPostRepository {

  final VideoPostDatasource videosDataSource;

  VideoPostsRepositoryImpl({
    required this.videosDataSource
  });



  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
   return videosDataSource.getTrendingVideosByPage(page);
  }



}