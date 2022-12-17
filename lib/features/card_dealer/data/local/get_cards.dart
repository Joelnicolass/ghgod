import 'package:gh_god/features/card/domain/entities/card.dart';
import 'package:gh_god/features/card/domain/entities/card_types.dart';
import 'package:gh_god/features/win_conditions/domain/entities/indicators.dart';
import 'package:gh_god/features/win_conditions/domain/entities/members_house.dart';
import 'package:gh_god/features/win_conditions/domain/entities/win_condition_base.dart';

class GetCardsLocal {
  static List<CardGame> welcomeCards() {
    return [
      CardGame(
        id: '0',
        title: 'Bienvenido a la Casa de GH',
        description: '',
        image: '',
        leftText: 'Gracias...',
        rightText: 'Gracias...',
        nextCardIdLeft: '1',
        nextCardIdRight: '1',
      ),
      CardGame(
        id: '1',
        title: '¿Cómo te sientes al respecto?',
        description: '',
        image: '',
        cardType: ECardType.question,
        leftText: 'Es lo que soñé toda la vida',
        rightText: 'Veremos que pasa',
        nextCardIdLeft: '2',
        nextCardIdRight: '2',
      ),
      CardGame(
          id: '2',
          title: 'Define tu futuro juego...',
          description: '',
          image: '',
          cardType: ECardType.question,
          leftText: 'Soy el estratega',
          leftAction: {
            EIndicators.panelistsTV.name: 10,
            EIndicators.viewers.name: -5,
            EIndicators.membersHouse.name: -5,
          },
          rightText: 'Soy yo mismo',
          nextCardIdLeft: '3',
          nextCardIdRight: '4'),
      CardGame(
          id: '3',
          title: 'Se escucha a lo lejos... ahí viene el estratega...',
          description: '',
          image: '',
          cardType: ECardType.problem,
          leftText:
              'Actuar con ironía, respondiendo en voz alta "Soy el estratega"',
          leftAction: {
            EIndicators.personalState.name: 5,
            EIndicators.panelistsTV.name: 10,
            EIndicators.viewers.name: -5,
            EIndicators.membersHouse.name: -10,
          },
          rightText: 'Actuar con indiferencia',
          rightAction: {
            EIndicators.personalState.name: 0,
            EIndicators.panelistsTV.name: -5,
            EIndicators.viewers.name: 5,
            EIndicators.membersHouse.name: 0,
          },
          nextCardIdLeft: '4',
          nextCardIdRight: '4'),
      CardGame(
          id: '4',
          title: 'Hola, me llamo Consti, vengo de Corrshientes...',
          description: '',
          image: '',
          cardType: ECardType.discussion,
          leftText: 'Burlarme de su acento',
          leftAction: {
            EIndicators.personalState.name: 10,
            EIndicators.panelistsTV.name: -5,
            EIndicators.viewers.name: -5,
            EIndicators.membersHouse.name: -5,
          },
          rightText: 'Ser amable',
          rightAction: {
            EIndicators.personalState.name: -10,
            EIndicators.panelistsTV.name: 5,
            EIndicators.viewers.name: 5,
            EIndicators.membersHouse.name: 5,
          },
          nextCardIdLeft: '6',
          nextCardIdRight: '5'),
      CardGame(
          id: '6',
          title: 'Luego de la burla, Consti se fue llorando...',
          description: '',
          image: '',
          cardType: ECardType.question,
          leftText: 'Fue un chiste, no me lo tome a mal',
          leftAction: {
            EIndicators.personalState.name: 5,
            EIndicators.panelistsTV.name: 1,
            EIndicators.viewers.name: 1,
            EIndicators.membersHouse.name: 1,
          },
          rightText: 'No me importa...',
          rightAction: {
            EIndicators.personalState.name: 0,
            EIndicators.panelistsTV.name: 5,
            EIndicators.viewers.name: -5,
            EIndicators.membersHouse.name: -5,
          },
          nextCardIdLeft: '7',
          nextCardIdRight: '7'),
      CardGame(
          id: '5',
          title: '¿Qué harás ahora?',
          description: '',
          image: '',
          cardType: ECardType.question,
          leftText: 'Ir a la cocina a preparar algo para comer para todos',
          leftAction: {
            EIndicators.personalState.name: -10,
            EIndicators.panelistsTV.name: 0,
            EIndicators.viewers.name: 5,
            EIndicators.membersHouse.name: 10,
          },
          rightText: 'Ir a la cocina y preparar algo para comer solo',
          rightAction: {
            EIndicators.personalState.name: 10,
            EIndicators.panelistsTV.name: 0,
            EIndicators.viewers.name: 0,
            EIndicators.membersHouse.name: -2,
          },
          nextCardIdLeft: '7',
          nextCardIdRight: '7'),
      CardGame(
          id: '7',
          title: 'Cae la noche... Todos se van a dormir...',
          description: '',
          image: '',
          cardType: ECardType.info,
          leftText: 'Esconder comida...',
          leftAction: {
            EIndicators.personalState.name: -10,
            EIndicators.panelistsTV.name: 0,
            EIndicators.viewers.name: 5,
            EIndicators.membersHouse.name: 10,
          },
          rightText: 'Ir a dormir...',
          rightAction: {
            EIndicators.personalState.name: 10,
            EIndicators.panelistsTV.name: 0,
            EIndicators.viewers.name: 0,
            EIndicators.membersHouse.name: -2,
          },
          nextCardIdLeft: '8',
          nextCardIdRight: '8')
    ];
  }
}
