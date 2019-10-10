## vim-jsx-pretty reproduction

This repository reproduces an issue with syntax highlighting of generic functions for both flow and typescript.

## Reproduction

Reproduction should be as simple as:

```bash
# might take a few minutes; builds from source
make build
make run
# once within the container
nvim -O src/test.js src/test.ts
```

## Cleanup

If you want to clear up the containers/images:

```bash
make clean
```

## Dependencies
* [make](https://www.gnu.org/software/make/)
* [docker](https://docs.docker.com/install/) (tested on `19.03.3`, but should work on older versions too)
