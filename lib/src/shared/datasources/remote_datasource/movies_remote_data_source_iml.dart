import 'package:dio/dio.dart';
import 'package:happy_time_module/src/core/commundomain/entitties/based_api_result/api_result_model.dart';
import 'package:happy_time_module/src/core/commundomain/entitties/based_api_result/error_result_model.dart';
import 'package:happy_time_module/src/core/constants/app_urls.dart';
import 'package:happy_time_module/src/core/injectable/injection.dart';
import 'package:happy_time_module/src/shared/datasources/remote_datasource/movies_remote_data_source.dart';
import 'package:happy_time_module/src/shared/models/requests/PaginationRequestModel.dart';
import 'package:happy_time_module/src/shared/models/responses/AnimeApiResponseModel.dart';
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
import 'package:injectable/injectable.dart';

@Injectable(as: MoviesRemoteDataSource)
class MoviesRemoteDataSourceIml implements MoviesRemoteDataSource {
  final Dio _client = happyTimeGetIt<Dio>();

  @override
  Future<ApiResultModel<HomeContentResponseModel>> fetchHomeContent() async {
    try {
      var response = await _client.get(ApiConstants.homeContentApi);

      return ApiResultModel.success(
          data: HomeContentResponseModel.fromJson(response.data));
    } catch (e) {
      return handleCatch<HomeContentResponseModel>(e);
    }
  }

  @override
  Future<ApiResultModel<NetworkListApiResponseModel>> fetchNetworkList() async {
    try {
      var response = await _client.get(ApiConstants.networksListApi);

      return ApiResultModel.success(
          data: NetworkListApiResponseModel.fromJson(response.data));
    } catch (e) {
      return handleCatch<NetworkListApiResponseModel>(e);
    }
  }

  @override
  Future<ApiResultModel<ChosenForYouApiResponseMode>>
      fetchMediaChosenContent() async {
    try {
      var response = await _client.get(ApiConstants.mediaChosenContentApi);

      return ApiResultModel.success(
          data: ChosenForYouApiResponseMode.fromJson(response.data));
    } catch (e) {
      return handleCatch<ChosenForYouApiResponseMode>(e);
    }
  }

  @override
  Future<ApiResultModel<MoviesLatestAddedResponseModel>>
      fetchMoviesLatestAdded() async {
    try {
      var response =
          await _client.get(ApiConstants.moviesLatestAddedContentApi);

      return ApiResultModel.success(
          data: MoviesLatestAddedResponseModel.fromJson(response.data));
    } catch (e) {
      return handleCatch<MoviesLatestAddedResponseModel>(e);
    }
  }

  @override
  Future<ApiResultModel<ChosenForYouApiResponseMode>>
      fetchMediaRecommendedContent() async {
    try {
      var response = await _client.get(ApiConstants.mediaRecommendedContentApi);

      return ApiResultModel.success(
          data: ChosenForYouApiResponseMode.fromJson(response.data));
    } catch (e) {
      return handleCatch<ChosenForYouApiResponseMode>(e);
    }
  }

  @override
  Future<ApiResultModel<ChosenForYouApiResponseMode>>
      fetchMediaTrendingContent() async {
    try {
      var response = await _client.get(ApiConstants.mediaTrendingContentApi);

      return ApiResultModel.success(
          data: ChosenForYouApiResponseMode.fromJson(response.data));
    } catch (e) {
      return handleCatch<ChosenForYouApiResponseMode>(e);
    }
  }

  @override
  Future<ApiResultModel<ChosenForYouApiResponseMode>>
      fetchMediaTFeaturedContent() async {
    try {
      var response = await _client.get(ApiConstants.mediaFeaturedContentApi);

      return ApiResultModel.success(
          data: ChosenForYouApiResponseMode.fromJson(response.data));
    } catch (e) {
      return handleCatch<ChosenForYouApiResponseMode>(e);
    }
  }

  @override
  Future<ApiResultModel<AnimeApiResponseModel>> fetchAnimeAll(
      {PaginationRequestModel? pagination}) async {
    try {
      var response = await _client.get(
        ApiConstants.animeAllContentApi,
        queryParameters: {"page":pagination!=null? pagination.page.toString():1},
      );

      return ApiResultModel.success(
          data: AnimeApiResponseModel.fromJson(response.data));
    } catch (e) {
      return handleCatch<AnimeApiResponseModel>(e);
    }
  }

  @override
  Future<ApiResultModel<MoviesLatestAddedResponseModel>> fetchMoviesAll(
      {PaginationRequestModel? pagination}) async {
    try {
      var response = await _client.get(
        ApiConstants.moviesAllContentApi,
        queryParameters: {"page":pagination!=null? pagination.page.toString():1},
      );

      return ApiResultModel.success(
          data: MoviesLatestAddedResponseModel.fromJson(response.data));
    } catch (e) {
      return handleCatch<MoviesLatestAddedResponseModel>(e);
    }
  }

  @override
  Future<ApiResultModel<MoviesLatestAddedResponseModel>> fetchSeriesAll(
      {PaginationRequestModel? pagination}) async {
    try {
      var response = await _client.get(
        ApiConstants.seriesAllContentApi,
        queryParameters: {"page":pagination!=null? pagination.page.toString():1},
      );

      return ApiResultModel.success(
          data: MoviesLatestAddedResponseModel.fromJson(response.data));
    } catch (e) {
      return handleCatch<MoviesLatestAddedResponseModel>(e);
    }
  }

  @override
  Future<ApiResultModel<MoviesLatestAddedResponseModel>>
      fetchSeriesRecommendedContent() async {
    try {
      var response =
          await _client.get(ApiConstants.seriesRecommendedContentApi);

      return ApiResultModel.success(
          data: MoviesLatestAddedResponseModel.fromJson(response.data));
    } catch (e) {
      return handleCatch<MoviesLatestAddedResponseModel>(e);
    }
  }

  @override
  Future<ApiResultModel<MoviesLatestAddedResponseModel>>
      fetchSeriesLatestAddedContent() async {
    try {
      var response =
          await _client.get(ApiConstants.seriesLatestAddedContentApi);

      return ApiResultModel.success(
          data: MoviesLatestAddedResponseModel.fromJson(response.data));
    } catch (e) {
      return handleCatch<MoviesLatestAddedResponseModel>(e);
    }
  }

  @override
  Future<ApiResultModel<AnimesRecentsApiResponseModel>> fetchAnimeRecentContent() async{
    try {
      var response =
      await _client.get(ApiConstants.animeRecentContentApi);

      return ApiResultModel.success(
          data: AnimesRecentsApiResponseModel.fromJson(response.data));
    } catch (e) {
      return handleCatch<AnimesRecentsApiResponseModel>(e);
    }
  }

  @override
  Future<ApiResultModel<NetworkMedaApiResponse>> fetchNetworkMedia({PaginationRequestModel? pagination,required String networkId})async {
    try {
      var response =
          await _client.get("/networks/media/show/$networkId/${ApiConstants.code}",
            queryParameters: {"page":pagination!=null? pagination.page.toString():1},
          );

      return ApiResultModel.success(
          data: NetworkMedaApiResponse.fromJson(response.data));
    } catch (e) {
      return handleCatch<NetworkMedaApiResponse>(e);
    }
  }

  @override
  Future<ApiResultModel<SeriesRelatedsApiResponseModel>> fetchSeriesRelated({PaginationRequestModel? pagination,required String seriesId})async {
    try {
      var response =
      await _client.get("/series/relateds/$seriesId/${ApiConstants.code}",
        queryParameters: {"page":pagination!=null? pagination.page.toString():1},
      );

      return ApiResultModel.success(
          data: SeriesRelatedsApiResponseModel.fromJson(response.data));
    } catch (e) {
      return handleCatch<SeriesRelatedsApiResponseModel>(e);
    }
  }

  @override
  Future<ApiResultModel<SeriesShowApiResponseModel>> fetchSeriesShow({required String seriesId}) async{
    try {
      var response =
      await _client.get("${ApiConstants.seriesShowApi}/$seriesId/${ApiConstants.code}",
      );

      return ApiResultModel.success(
          data: SeriesShowApiResponseModel.fromJson(response.data));
    } catch (e) {
      return handleCatch<SeriesShowApiResponseModel>(e);
    }
  }

  @override
  Future<ApiResultModel<MediaSuggestedContentApiResponseModel>> fetchMediaSuggestedContentApi({PaginationRequestModel? pagination}) async{
    try {
      var response =
          await _client.get(ApiConstants.mediaSuggestedContentApi,
      );

      return ApiResultModel.success(
          data: MediaSuggestedContentApiResponseModel.fromJson(response.data));
    } catch (e) {
      return handleCatch<MediaSuggestedContentApiResponseModel>(e);
    }
  }

  @override
  Future<ApiResultModel<AnimeSeasonApiResponseModel>> fetchAnimeSeasons({required String animeId ,PaginationRequestModel? pagination,})async {
  //
    try {
      var response =
      await _client.get('animes/seasons/$animeId/${ApiConstants.code}',
        queryParameters: {"page":pagination!=null? pagination.page.toString():1},
      );

      return ApiResultModel.success(
          data: AnimeSeasonApiResponseModel.fromJson(response.data));
    } catch (e) {
      return handleCatch<AnimeSeasonApiResponseModel>(e);
    }
  }

  @override
  Future<ApiResultModel<MediaDetailApiResponseModel>> fetchMediaDetail({required String mediaId}) async{
    try {
      var response =
          await _client.get('${ApiConstants.mediaDetailApi}/$mediaId/${ApiConstants.code}',
      );

      return ApiResultModel.success(
          data: MediaDetailApiResponseModel.fromJson(response.data));
    } catch (e) {
      return handleCatch<MediaDetailApiResponseModel>(e);
    }
  }
}
