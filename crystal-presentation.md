# Crystal

## What is Crystal?
Quote from mike perham:
"Crystal is a great tool for your toolkit where high performance is paramount."

see: `http://leopard.in.ua/presentations/brug_2015/index.html?full#CrystalNBody`
Compile strategy
Concurrency - https://crystal-lang.org/docs/guides/concurrency.html


##

## What are Native Extensions?
`http://patshaughnessy.net/2011/10/31/dont-be-terrified-of-building-native-extensions`
“Native extensions” are the glue that connects a Ruby gem with some other non-Ruby software component or library present on your machine.

The native extension is some C code that’s included inside the Ruby gem that calls the external component’s API, converting the parameters and return values between the format the external library needs and what the Ruby interpreter expects. Native extensions are one of the reasons for the success of the Ruby platform, since they allow Ruby gem authors to take advantage of non-Ruby libraries when appropriate in an organized, standard way. This means that Ruby gem authors can use Ruby to do what Ruby is best at, but switch to C or some other programming language or library when that makes sense.

### Why write a native extension?
Typically, native extensions have been written in C. The advantage of C code is performance.
see: `http://www.stefanwille.com/2015/05/redis-clients-crystal-vs-ruby-vs-c-vs-go/`
see: `http://benchmarksgame.alioth.debian.org/u32/compare.php?lang=yarv&lang2=gcc`


- language basics 10 min
  - types
  - class definitions
  - accessors/properties
  - private vs protected
  - some ruby code vs some crystal code example
    - fibinocci side-by-sde?

- metaprogramming 4 min
  - macros

- concurrency strategy 4 min
  - Channels and Fibers

- Performance 5 min
  - benchmark examples
  `time crystal n-body.cr 1000000`
  `time ruby n-body.rb 1000000`

- C Bindings 5 min
  - example
  - usage (native extensions)

- What is a Native Extension? 1 min

- Example of Native Extension (inflections) 5 min
