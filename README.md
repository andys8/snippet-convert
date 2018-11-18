# snippet-convert
[![Build Status](https://travis-ci.org/andys8/snippet-convert.svg?branch=master)](https://travis-ci.org/andys8/snippet-convert)

Experimental vscode to vim / UltiSnips snippet conversion

## Setup

* Install [`stack`](https://www.haskellstack.org)

## Execute

```sh
chmod u+x snippet-convert.hs
./snippet-convert.hs example.json
```

## Run in GHCI

```sh
$ run ghci
> :l snippets-convert.hs
> convertSnippets "{}"
```
## Run with Docker

```sh
docker run -it -v $(pwd):/app --rm haskell:8.2 stack --system-ghc /app/snippet-convert.hs
```
