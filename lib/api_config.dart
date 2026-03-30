// Openapi Generator last run: : 2026-03-28T15:46:48.229381
import 'package:openapi_generator_annotations/openapi_generator_annotations.dart';

@Openapi(
  additionalProperties: DioProperties(
    pubName: 'ecommerce_api_client',
  ),
  inputSpec: RemoteSpec(path: 'https://e-commerce-backend-sw10.onrender.com/docs/openapi.json'),
  generatorName: Generator.dio,
  runSourceGenOnOutput: true, // Recommended for v6.x
  outputDirectory: 'api_client',
)
class ApiConfig {}