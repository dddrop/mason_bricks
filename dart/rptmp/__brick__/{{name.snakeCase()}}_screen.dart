import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class {{name.pascalCase()}}Screen extends HookConsumerWidget {
  const {{name.pascalCase()}}Screen({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          Text(runtimeType.toString()),
          ElevatedButton(onPressed: () => context.pop(), child: const Text('Back')),
        ],
      ),
    );
  }
}
