erlog
=====
a simple, easy logger for erlang  
features
=====
log level can be set dynamically   
easily be implated to exist apps  
erlog also collect sasl logs  
How to use
=====

    git clone git@github.com:zhizhen/erlog.git
    cd erlog
    ./rebar compile 
    erl -pa ebin
    application:start(sasl).
    application:start(erlog).

now you can use erlog APIs:
    
    erlog:print_msg("hello, erlog!~n").
    erlog:print_msg("hello, ~p~n", [erlog]).
    ...
there are 6 log level: print, debug, info, warning, error, critical, which 
can be change dynamically by:  

    loglevel:set(Level).

you can get the current log level by:

    loglevel:get().


