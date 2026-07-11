[![CI](https://github.com/loco-lang/loco-emacs/actions/workflows/ci.yml/badge.svg)](https://github.com/loco-lang/loco-emacs/actions/workflows/ci.yml)
[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

# Loco for Emacs

Loco language support for [Emacs](https://www.gnu.org/software/emacs/) using built-in tree-sitter support.

Requires Emacs >= 29.1.

## Installation

### Step 1: Install the tree-sitter grammar

```elisp
(add-to-list 'treesit-language-source-alist
             '(loco "https://github.com/loco-lang/tree-sitter-loco"))
(treesit-install-language-grammar 'loco)
```

### Step 2: Install the major mode

Add `loco-ts-mode.el` to your `load-path` and require it:

```elisp
(add-to-list 'load-path "/path/to/loco-emacs")
(require 'loco-ts-mode)
```

### Step 3: Copy query files

```bash
cp -r queries/loco/ ~/.emacs.d/queries/loco/
```

## Features

- Syntax highlighting via tree-sitter
- Code folding
- Symbol navigation
- Structural text objects
- Scope-aware highlighting

## Updating queries

Query files are sourced from [tree-sitter-loco](https://github.com/loco-lang/tree-sitter-loco/queries/).
To update, copy the latest `.scm` files into `queries/loco/`.

## License

MIT
