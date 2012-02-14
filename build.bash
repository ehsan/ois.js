#!/bin/bash

set -e

cd src
export CXXFLAGS=-DOIS_SDL_PLATFORM
emconfigure ./bootstrap
emconfigure ./configure
make
cp src/.libs/libOIS.a ..

