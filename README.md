[![CI](https://github.com/loco-lang/loco-emacs/actions/workflows/ci.yml/badge.svg)](https://github.com/loco-lang/loco-emacs/actions/workflows/ci.yml)
[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

# loco-emacs

Emacs major mode for the [Loco](https://github.com/loco-lang/loco) programming language.

**This is a mirror repo.** The canonical source is maintained in
[tree-sitter-loco/editors/emacs](https://github.com/loco-lang/tree-sitter-loco/tree/main/editors/emacs).

To update: submit changes to `tree-sitter-loco/editors/emacs/`, and they will be synced here.

## Prerequisites

- Emacs >= 29.1 (built-in tree-sitter support)

## Installation

1. Install the tree-sitter grammar:
   ```elisp
   (add-to-list 'treesit-language-source-alist
                '(loco "https://github.com/loco-lang/tree-sitter-loco"))
   (treesit-install-language-grammar 'loco)
   ```

2. Add `loco-ts-mode.el` to your load-path and require it:
   ```elisp
   (add-to-list 'load-path "/path/to/loco-emacs")
   (require 'loco-ts-mode)
   ```

3. Copy query files:
   ```bash
   cp -r queries/loco/ ~/.emacs.d/queries/loco/
   ```

## Features

- Syntax highlighting via tree-sitter
- Code folding
- Symbol navigation
- Structural text objects
- Scope-aware highlighting

## Related

- [Tree-sitter grammar](https://github.com/loco-lang/tree-sitter-loco)
- [All editor extensions](https://github.com/loco-lang/tree-sitter-loco#editor-support)

## License

MIT
