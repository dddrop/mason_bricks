import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '{{name.snakeCase()}}_view_model.freezed.dart';

part '{{name.snakeCase()}}_view_model.g.dart';

// MARK: - State
@freezed
class {{name.pascalCase()}}State with _${{name.pascalCase()}}State {
  const factory {{name.pascalCase()}}State() = _{{name.pascalCase()}}State;
}

// MARK: - ViewModel
@riverpod
class {{name.pascalCase()}}ViewModel extends _${{name.pascalCase()}}ViewModel {
  
  @override
  {{name.pascalCase()}}State build() => const {{name.pascalCase()}}State();
}
