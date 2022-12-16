import 'package:flutter/material.dart';
import 'package:gh_god/features/card/data/adapters/card_adapter.dart';
import 'package:gh_god/features/card/data/data_source/local.dart';
import 'package:gh_god/features/card/domain/entity/card.dart';
import 'package:gh_god/features/card/domain/repositories/card_repository.dart';
import 'dart:convert';
import 'dart:io';

class CardServicesLocal extends CardRepository {
  @override
  Future<CardGame> getCard() {
    final infoCard = getInfoCard();
    final card = CardAdapter.fromJson(infoCard);

    return Future.value(card);
  }
}
