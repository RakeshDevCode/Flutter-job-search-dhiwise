// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'englishuk_item_model.dart';
import 'chineses_item_model.dart';

/// This class defines the variables used in the [language_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class LanguageModel extends Equatable {
  LanguageModel({
    this.englishukItemList = const [],
    this.chinesesItemList = const [],
  }) {}

  List<EnglishukItemModel> englishukItemList;

  List<ChinesesItemModel> chinesesItemList;

  LanguageModel copyWith({
    List<EnglishukItemModel>? englishukItemList,
    List<ChinesesItemModel>? chinesesItemList,
  }) {
    return LanguageModel(
      englishukItemList: englishukItemList ?? this.englishukItemList,
      chinesesItemList: chinesesItemList ?? this.chinesesItemList,
    );
  }

  @override
  List<Object?> get props => [englishukItemList, chinesesItemList];
}
