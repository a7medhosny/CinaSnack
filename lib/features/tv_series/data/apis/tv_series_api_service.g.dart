// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_series_api_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations

class _TvSeriesApiService implements TvSeriesApiService {
  _TvSeriesApiService(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://api.themoviedb.org/3/';
  }

  final Dio _dio;

  String? baseUrl;


  @override
  Future<TvSeriesResponseModel> getPopularTvSeries(
    String language,
    int page,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'language': language,
      r'page': page,
    };
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<TvSeriesResponseModel>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            'tv/popular',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late TvSeriesResponseModel _value;
    try {
      _value = TvSeriesResponseModel.fromJson(_result.data!);
    } on Object catch (e, s) {
      rethrow;
    }
    return _value;
  }

  @override
  Future<TvSeriesResponseModel> getTopRatedTvSeries(
    String language,
    int page,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'language': language,
      r'page': page,
    };
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<TvSeriesResponseModel>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            'tv/top_rated',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late TvSeriesResponseModel _value;
    try {
      _value = TvSeriesResponseModel.fromJson(_result.data!);
    } on Object catch (e, s) {
      rethrow;
    }
    return _value;
  }

  @override
  Future<TvSeriesResponseModel> getAiringTodayTvSeries(
    String language,
    int page,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'language': language,
      r'page': page,
    };
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<TvSeriesResponseModel>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            'tv/airing_today',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late TvSeriesResponseModel _value;
    try {
      _value = TvSeriesResponseModel.fromJson(_result.data!);
    } on Object catch (e, s) {
      rethrow;
    }
    return _value;
  }

  @override
  Future<TvSeriesResponseModel> getOnTheAirTvSeries(
    String language,
    int page,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'language': language,
      r'page': page,
    };
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<TvSeriesResponseModel>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            'tv/on_the_air',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late TvSeriesResponseModel _value;
    try {
      _value = TvSeriesResponseModel.fromJson(_result.data!);
    } on Object catch (e, s) {
      rethrow;
    }
    return _value;
  }

  @override
  Future<TvSeriesDetailsModel> getTvSeriesDetails(
    int seriesId,
    String language,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'language': language};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<TvSeriesDetailsModel>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            'tv/${seriesId}',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late TvSeriesDetailsModel _value;
    try {
      _value = TvSeriesDetailsModel.fromJson(_result.data!);
    } on Object catch (e, s) {
      rethrow;
    }
    return _value;
  }

  @override
  Future<CreditsResponseModel> getTvSeriesCredits(
    int seriesId,
    String language,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'language': language};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<CreditsResponseModel>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            'tv/${seriesId}/credits',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late CreditsResponseModel _value;
    try {
      _value = CreditsResponseModel.fromJson(_result.data!);
    } on Object catch (e, s) {
      rethrow;
    }
    return _value;
  }

  @override
  Future<VideosResponse> getTvSeriesVideos(
    int seriesId,
    String language,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'language': language};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<VideosResponse>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            'tv/${seriesId}/videos',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late VideosResponse _value;
    try {
      _value = VideosResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      rethrow;
    }
    return _value;
  }

  @override
  Future<TvSeriesResponseModel> getTvSeriesRecommendations(
    int seriesId,
    String language,
    int page,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'language': language,
      r'page': page,
    };
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<TvSeriesResponseModel>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            'tv/${seriesId}/recommendations',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late TvSeriesResponseModel _value;
    try {
      _value = TvSeriesResponseModel.fromJson(_result.data!);
    } on Object catch (e, s) {
      rethrow;
    }
    return _value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(String dioBaseUrl, String? baseUrl) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
