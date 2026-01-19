// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ActiveTicketController)
const activeTicketControllerProvider = ActiveTicketControllerProvider._();

final class ActiveTicketControllerProvider
    extends $AsyncNotifierProvider<ActiveTicketController, List<Ticket>> {
  const ActiveTicketControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'activeTicketControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$activeTicketControllerHash();

  @$internal
  @override
  ActiveTicketController create() => ActiveTicketController();
}

String _$activeTicketControllerHash() =>
    r'1f2dc2c225cb555ce133a91ab9b70a80e96b8594';

abstract class _$ActiveTicketController extends $AsyncNotifier<List<Ticket>> {
  FutureOr<List<Ticket>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<List<Ticket>>, List<Ticket>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Ticket>>, List<Ticket>>,
              AsyncValue<List<Ticket>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(HistoryTicketController)
const historyTicketControllerProvider = HistoryTicketControllerProvider._();

final class HistoryTicketControllerProvider
    extends $AsyncNotifierProvider<HistoryTicketController, List<Ticket>> {
  const HistoryTicketControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'historyTicketControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$historyTicketControllerHash();

  @$internal
  @override
  HistoryTicketController create() => HistoryTicketController();
}

String _$historyTicketControllerHash() =>
    r'7ea0dd1b97a6163719ac61acd2fa2773183b8b77';

abstract class _$HistoryTicketController extends $AsyncNotifier<List<Ticket>> {
  FutureOr<List<Ticket>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<List<Ticket>>, List<Ticket>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Ticket>>, List<Ticket>>,
              AsyncValue<List<Ticket>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
