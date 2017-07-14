PROJECT = http2_client
PROJECT_DESCRIPTION = Erlang HTTP/2 client
PROJECT_VERSION = 0.1.0

# Whitespace to be used when creating files from templates.
SP = 4

DEPS = cowlib
dep_cowlib = git https://github.com/ninenines/cowlib master

include erlang.mk
