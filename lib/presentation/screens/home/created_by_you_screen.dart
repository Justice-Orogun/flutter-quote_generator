import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:quote_generator/presentation/theme/theme.dart';
import 'package:quote_generator/presentation/translations/translations.dart';
import 'package:quote_generator/presentation/widgets/widgets.dart';
import 'package:quote_generator/data/models/models.dart';

class CreatedByYouScreen extends StatelessWidget {
  static CreatedByYouScreen builder(
    BuildContext context,
    GoRouterState state,
  ) =>
      const CreatedByYouScreen();

  const CreatedByYouScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: QuoteModel.itemsFav.isEmpty
          ? Center(
              child: Padding(
                padding: Dimensions.kPaddingAllLarge,
                child: EmptyQuoteCard(
                  displayIcon: FontAwesomeIcons.list,
                  displayText: context.l10n.empty_card_created_by_you,
                ),
              ),
            )
          : const ListOfQuotes(
              key: Key('CreatedByYouScreen'),
              items: QuoteModel.items,
            ),
    );
  }
}