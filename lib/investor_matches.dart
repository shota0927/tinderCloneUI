import 'package:flutter/widgets.dart';
import './investor_profile.dart';

class InvestorMatchEngine extends ChangeNotifier {
  final List<InvestorMatch> _matches;
  int _currrentMatchIndex;
  int _nextMatchIndex;

  InvestorMatchEngine({
    List<InvestorMatch> matches,
  }) : _matches = matches {
    _currrentMatchIndex = 0;
    _nextMatchIndex = 1;
  }

  InvestorMatch get currentMatch => _matches[_currrentMatchIndex];
  InvestorMatch get nextMatch => _matches[_nextMatchIndex];

  void cycleMatch() {
    if (currentMatch.decision != Decision.indecided) {
      currentMatch.reset();
      _currrentMatchIndex = _nextMatchIndex;
      _nextMatchIndex =
      _nextMatchIndex < _matches.length - 1 ? _nextMatchIndex + 1 : 0;
      notifyListeners();
    }
  }
}

class InvestorMatch extends ChangeNotifier {
  final InvestorProfile profile;
  Decision decision = Decision.indecided;

  InvestorMatch({this.profile});

  void like() {
    if (decision == Decision.indecided) {
      decision = Decision.like;
      notifyListeners();
    }
  }

  void nope() {
    if (decision == Decision.indecided) {
      decision = Decision.nope;
      notifyListeners();
    }
  }

  void superLike() {
    if (decision == Decision.indecided) {
      decision = Decision.superLike;
      notifyListeners();
    }
  }

  void reset() {
    if (decision != Decision.indecided) {
      decision = Decision.indecided;
      notifyListeners();
    }
  }
}

enum Decision {
  indecided,
  nope,
  like,
  superLike,
}
