import Principal "mo:core/Principal";
import AccessControl "mo:caffeineai-authorization/access-control";
import MixinAuthorization "mo:caffeineai-authorization/MixinAuthorization";
import Entity "mo:caffeineai-oql/Entity";
import Expose "mo:caffeineai-oql/Expose";
import { _toRow } "mo:caffeineai-oql/TextValue";

actor {
  let accessControlState : AccessControl.AccessControlState;
  include MixinAuthorization(accessControlState, null);

  include Expose({
    entities = [
      Entity.manual<(Principal, AccessControl.UserRole)>(
        "userRole",
        func () = accessControlState.userRoles.entries(),
        "UserRole",
        "principal",
      )
        .payload("principal", func ((p, _)) = p.toText())
        .payload("role", func ((_, r)) = switch r {
          case (#admin) "admin";
          case (#user) "user";
          case (#guest) "guest";
        })
        .controllerOnly()
        .build(),
    ];
  });
};
