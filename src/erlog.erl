-module(erlog).
-include("logger.hrl").

-export([
        print_msg/1,
        print_msg/2,
        debug_msg/1,
        debug_msg/2,
        info_msg/1, 
        info_msg/2,
        warning_msg/1,
        warning_msg/2,
        error_msg/1,
        error_msg/2,
        critical_msg/1,
        critical_msg/2
    ]).

print_msg(Msg) ->
    ?PRINT(Msg).

print_msg(Format, Msg) ->
    ?PRINT(Format, Msg).

debug_msg(Msg) ->
    ?DEBUG_MSG(Msg).

debug_msg(Format, Msg) ->
    ?DEBUG_MSG(Format, Msg).

info_msg(Msg) ->
    ?INFO_MSG(Msg).

info_msg(Format, Msg) ->
    ?INFO_MSG(Format, Msg).

warning_msg(Msg) ->
    ?WARNING_MSG(Msg).

warning_msg(Format, Msg) ->
    ?WARNING_MSG(Format, Msg).

error_msg(Msg) ->
    ?ERROR_MSG(Msg).

error_msg(Format, Msg) ->
    ?ERROR_MSG(Format, Msg).

critical_msg(Msg) ->
    ?CRITICAL_MSG(Msg).

critical_msg(Format, Msg) ->
    ?CRITICAL_MSG(Format, Msg).
