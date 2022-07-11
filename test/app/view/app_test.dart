// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.
import 'package:flutter_test/flutter_test.dart';
import 'package:ncl_coding_assessment/app/app.dart';
import 'package:ncl_coding_assessment/ships/view/app_section.dart';

void main() {
  group('App', () {
    testWidgets('renders AppSection', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(AppSection), findsOneWidget);
    });
  });
}
