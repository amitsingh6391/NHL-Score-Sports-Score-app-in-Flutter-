import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sports/services/sports_data_services.dart';

final sportsDataProvider = ChangeNotifierProvider<SportServices>((value) {
  return SportServices();
});
