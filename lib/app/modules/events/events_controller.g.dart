// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$EventsController on _EventsBase, Store {
  final _$listEventsAtom = Atom(name: '_EventsBase.listEvents');

  @override
  ObservableFuture<List<Event>> get listEvents {
    _$listEventsAtom.context.enforceReadPolicy(_$listEventsAtom);
    _$listEventsAtom.reportObserved();
    return super.listEvents;
  }

  @override
  set listEvents(ObservableFuture<List<Event>> value) {
    _$listEventsAtom.context.conditionallyRunInAction(() {
      super.listEvents = value;
      _$listEventsAtom.reportChanged();
    }, _$listEventsAtom, name: '${_$listEventsAtom.name}_set');
  }

  final _$getEventsAsyncAction = AsyncAction('getEvents');

  @override
  Future getEvents() {
    return _$getEventsAsyncAction.run(() => super.getEvents());
  }

  final _$getNextEventsAsyncAction = AsyncAction('getNextEvents');

  @override
  Future getNextEvents() {
    return _$getNextEventsAsyncAction.run(() => super.getNextEvents());
  }
}
