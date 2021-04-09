# Haskell road to PRODUCTION

- [ ] Setup (visual studio code):
  - [x] [Stack](https://docs.haskellstack.org/en/stable/README/)
  - [x] Proxy
  - [ ] Private Repo (Artifactory)

- [ ] Logging

- [ ] [Configuration](https://conferer.ludat.io/docs/sources/basics)

- [ ] Data Modeling with Haskell. Data structures
  - https://haskell-at-work.com/episodes/2018-01-19-domain-modelling-with-haskell-data-structures.html

- [ ] Testing
  - [ ] [QuickCheck](https://hackage.haskell.org/package/QuickCheck)

- [ ] Work with (large) Files

- [ ] __RESTful API__
  - [ ] Yesod: [here](https://hackage.haskell.org/package/yesod) and [here](https://www.yesodweb.com), and [here for REST](https://www.yesodweb.com/book/restful-content#restful-content_representations)
  - [ ] [Servant](https://docs.servant.dev/en/stable/tutorial/ApiType.html)
  - [ ] [Scotty](https://hackage.haskell.org/package/scotty)

- [ ] __HTTP client__
  - [ ] [Simple http-client](https://github.com/snoyberg/http-client/blob/master/TUTORIAL.md)
  - [ ] [http-tls client](<[http-client-tls](https://www.stackage.org/package/http-client-tls)>)
- [ ] __CLI__
  - [ ] [optparse-applicative](https://hackage.haskell.org/package/optparse-applicative)
- [ ] __work with JSON__
  - [ ] [Aeson](https://www.stackage.org/lts-16.22/package/aeson-1.4.7.1)
- [ ] __Web Application__
  - [ ] [yesodweb](https://www.yesodweb.com/book/widgets)
  - [ ] [WAI](https://hackage.haskell.org/package/wai-3.2.3/docs/Network-Wai.html#t:Application)
  - [ ] [WARP](https://wiki.haskell.org/Web/Servers#Warp)
- [ ] __Persistence__
  - [ ] [esqueleto](https://hackage.haskell.org/package/esqueleto)
- [ ] Common Effects
  - [ ] Random
  - [ ] UUID
  - [ ] Scheduler
- [ ] DSL
  - [ ] [Polysemy](polysemy is a library for writing high-power, low-boilerplate domain specific languages). More about polysemy
    - [here](https://haskell-explained.gitlab.io/blog/posts/2019/07/28/polysemy-is-cool-part-1/index.html)
    - [here](https://youtu.be/idU7GdlfP9Q?t=1394)

## Low priority

- [ ] Developer experience
  - [ ] vs code setup
  - [ ] Debugging (vs code)
- [ ] work with MySQL
- [ ] work with XML
- [ ] work with NoSQL
- [ ] pipeline (Microsoft Azure DevOps, Gitlab actions)
- [ ] Performance
- [ ] Reactive Programming ([Reflex](https://hackage.haskell.org/package/reflex))
- [ ] Data Streaming ([conduit](https://github.com/snoyberg/conduit#readme))
- [ ] Versioning
  - [ ] Different project with different toolchain versions (stack, cabal, ghc, ghci, ghcid)
- [ ] Accessing remote data concurently
  - [ ] [Haxl](http://hackage.haskell.org/package/haxl)

## Popular effects

- [ ] logging
- [ ] random numbers
  - import System.Random -> [link](https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/using-warnings.html)
- [ ] UUID
- [ ] read/write to file
- [ ] read/write to console
- [ ] current date/time
- [ ] metrics
- [ ] tracing

## Data Structures

- Set
  stack import containers
  import Data.Set
-


