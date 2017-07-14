# HTTP2 Client

A simple HTTP/2 client, created primarily to support gRPC.

## Build
http2_client uses [erlang.mk](https://erlang.mk/) as build tool. On Unix systems it can be built
with: 

```
make
```

`make edoc` can be used to generate documentation for the individual
modules from edoc comments in those modules.

See the [erlang.mk documentation](https://erlang.mk/guide/installation.html#_on_windows) for
an explanation on how the tool can be used in a Windows environment.

## Dependencies

- [cowlib](https://github.com/willemdj/cowboy) is used to compress and
  decompress the HTTP/2 headers.

## Limitations

Http2_client implements only those features that are required by gRPC, it is
not a complete implementation of the HTTP/2 spec. In particular it does not
support:

- Push promise. The gRPC protocol does not use it.

  The initial SETTINGS frame sent by the client will disable push promise 
  messages, and if a push promise is received from the server this will
  result in a protocol error.

- Priorization and dependency between streams. The API will not offer any
  support for sending PRIORITY frames to the server, and any PRIORITY
  frame that is received will be ignored.

## License

Apache 2.0

