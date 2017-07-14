-module(http2_client_app).
-behaviour(application).

-export([start/2]).
-export([stop/1]).

start(_Type, _Args) ->
    http2_client_sup:start_link().

stop(_State) ->
    ok.
