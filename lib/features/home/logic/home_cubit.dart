import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/features/home/logic/home_states.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitialState());

  static HomeCubit get(context) => BlocProvider.of(context);
}
