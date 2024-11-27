import 'package:happy_time_module/src/core/commundomain/entitties/based_api_result/api_result_model.dart';
import 'package:happy_time_module/src/shared/models/requests/PaginationRequestModel.dart';
import 'package:happy_time_module/src/shared/models/responses/AnimeApiResponseModel.dart';
import 'package:happy_time_module/src/shared/models/responses/AnimeShowApiResponseModel.dart';
import 'package:happy_time_module/src/shared/models/responses/AnimesRecentsApiResponseModel.dart';
import 'package:happy_time_module/src/shared/models/responses/AnimesSeasonsApiResponseModel.dart';
import 'package:happy_time_module/src/shared/models/responses/ChosenForYouApiResponseMode.dart';
import 'package:happy_time_module/src/shared/models/responses/HomeContentResponseModel.dart';
import 'package:happy_time_module/src/shared/models/responses/MediaDetailApiResponseModel.dart';
import 'package:happy_time_module/src/shared/models/responses/MediaSuggestedContentApiResponse.dart';
import 'package:happy_time_module/src/shared/models/responses/MoviesLatestAddedResponseModel.dart';
import 'package:happy_time_module/src/shared/models/responses/NetworkListApiResponseModel.dart';
import 'package:happy_time_module/src/shared/models/responses/NetworkMedaApiResponse.dart';
import 'package:happy_time_module/src/shared/models/responses/SeriesRelatedsApiResponseModel.dart';
import 'package:happy_time_module/src/shared/models/responses/SeriesShowApiResponseModel.dart';

abstract class MoviesRemoteDataSource {
  Future<ApiResultModel<HomeContentResponseModel>> fetchHomeContent();

  Future<ApiResultModel<ChosenForYouApiResponseMode>> fetchMediaChosenContent();

  Future<ApiResultModel<ChosenForYouApiResponseMode>>
      fetchMediaRecommendedContent();

  Future<ApiResultModel<ChosenForYouApiResponseMode>>
      fetchMediaTrendingContent(); //mediaTrendingContentApi
  Future<ApiResultModel<ChosenForYouApiResponseMode>>
      fetchMediaTFeaturedContent(); //mediaTrendingContentApi
  Future<ApiResultModel<NetworkListApiResponseModel>> fetchNetworkList();

  Future<ApiResultModel<NetworkMedaApiResponse>> fetchNetworkMedia({
    PaginationRequestModel? pagination,
    required String networkId,
  });

  Future<ApiResultModel<MoviesLatestAddedResponseModel>>
      fetchSeriesRecommendedContent();

  Future<ApiResultModel<MoviesLatestAddedResponseModel>>
      fetchSeriesLatestAddedContent();

  Future<ApiResultModel<AnimesRecentsApiResponseModel>>
      fetchAnimeRecentContent();

  Future<ApiResultModel<MoviesLatestAddedResponseModel>>
      fetchMoviesLatestAdded();

  Future<ApiResultModel<MediaSuggestedContentApiResponseModel>> fetchMediaSuggestedContentApi({
    PaginationRequestModel? pagination,
  });

  Future<ApiResultModel<MoviesLatestAddedResponseModel>> fetchMoviesAll({
    PaginationRequestModel? pagination,
  });

  Future<ApiResultModel<MoviesLatestAddedResponseModel>> fetchSeriesAll({
    PaginationRequestModel? pagination,
    String? path
  });

  Future<ApiResultModel<AnimeApiResponseModel>> fetchAnimeAll({
    PaginationRequestModel? pagination,
  });


  Future<ApiResultModel<SeriesRelatedsApiResponseModel>> fetchSeriesRelated({
    PaginationRequestModel? pagination,
    required String seriesId
  });

  //series/show
  Future<ApiResultModel<AnimeShowApiResponseModel>> fetchAnimeShow({
    required String animeId
  });
  //series/show
  Future<ApiResultModel<SeriesShowApiResponseModel>> fetchSeriesShow({
    required String seriesId
  });
  //animes/seasons/759
  Future<ApiResultModel<AnimeSeasonApiResponseModel>> fetchAnimeSeasons({
    required String animeId,
    PaginationRequestModel? pagination,
  });
  //animes/seasons/759
  Future<ApiResultModel<MediaDetailApiResponseModel>> fetchMediaDetail({
    required String mediaId,
  });

}
