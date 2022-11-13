import 'package:freezed_annotation/freezed_annotation.dart';

part '{{name.snakeCase()}}.freezed.dart';
{{#json}}
part '{{name.snakeCase()}}.g.dart';
{{/json}}

@freezed
class {{name.pascalCase()}} with _${{name.pascalCase()}} {
  const factory {{name.pascalCase()}}({
    //
  }) = _{{name.pascalCase()}};
  {{#json}}
  factory {{name.pascalCase()}}.fromJson(Map<String, dynamic> json) => _${{name.pascalCase()}}FromJson(json);
  {{/json}}
}
