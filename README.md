# snippet-convert

Experimental vscode to UltiSnips snippet conversion

## Setup

* Install `stack`
* `stack install turtle`

## Execute

* `chmod u+x snippet-convert.hs`
* `./snippet-convert.hs example.json`

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
