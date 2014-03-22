-module(erlog_app).

-behaviour(application).

-include("logger.hrl").

%% Application callbacks
-export([start/2, stop/1]).

%% ===================================================================
%% Application callbacks
%% ===================================================================

start(_StartType, _StartArgs) ->
    {ok, Pid} = erlog_sup:start_link(),
    loglevel:set(5),
    Dir = "logs",
    Prefix = "erlog",
    IsMf = true,
    gen_event:add_handler(error_logger, file_appender, [Dir, Prefix, IsMf]),
    ?INFO_MSG("start erlog done !"),
    {ok, Pid}.

stop(_State) ->
    ok.
