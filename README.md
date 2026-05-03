# homebrew-tap

[Homebrew](https://brew.sh) tap for [hra42](https://github.com/hra42)'s tools.

## Install

```sh
brew install hra42/tap/<formula>
```

The first install adds the tap automatically. To add it explicitly:

```sh
brew tap hra42/tap
```

## Formulas

| Formula | Description |
|---|---|
| [`ai`](Formula/ai.rb) | AI shell assistant — turn natural language into shell commands. [Source](https://github.com/hra42/ai). |

## Updates

Formulas in this tap are updated automatically when a new tag is pushed to the corresponding source repo. The release pipeline renders and commits the formula here.

## Notes

These formulas build from source. `go` (or whatever toolchain is needed) gets installed by Homebrew on demand and the result is cached as a bottle locally — subsequent installs on the same machine are instant.
