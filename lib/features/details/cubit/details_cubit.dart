import 'package:bloc/bloc.dart';
import 'package:cantwait28/models/item_model.dart';
import 'package:cantwait28/repositories/items_repository.dart';
import 'package:meta/meta.dart';

part 'details_state.dart';

class DetailsCubit extends Cubit<DetailsState> {
  DetailsCubit(this._itemsREposirtory) : super(DetailsState(itemModel: null));
  final ItemsRepository _itemsREposirtory;
  Future<void> getItemWithID(String id) async {
    final itemModel = await _itemsREposirtory.get(id: id);
    emit(DetailsState(itemModel: itemModel));
  }
}
