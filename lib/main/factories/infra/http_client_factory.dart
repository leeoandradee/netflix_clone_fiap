import 'package:http/http.dart';
import 'package:netflix_clone_fiap/infra/http/http_adapter.dart';

HttpAdapter makeHttpClient() => HttpAdapter(client: Client());
