erlog
=====
a simple, easy, embeddable logger for erlang  
一个简单易用，可嵌入其他ap的日志系统
How to use
=====

    git clone git@github.com:zhizhen/erlog.git
    cd erlog
    ./rebar compile 
    erl -pa ebin
    application:start(sasl).
    application:start(erlog).

now you can use erlog APIs:
    
    erlog:print("hello, erlog!~n").
    erlog:print("hello, ~p~n", [erlog]).
