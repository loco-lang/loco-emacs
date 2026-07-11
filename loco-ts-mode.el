;;; loco-ts-mode.el — Major mode for Loco using tree-sitter

(require 'treesit)

(defvar loco--keywords
  '("actor" "automation" "composite" "const" "do" "else" "fork"
    "if" "import" "intrinsic" "launch" "let" "new" "on" "or" "and" "not"
    "proc" "pub" "route" "send" "start" "state" "startup")
  "Loco keywords for tree-sitter font-lock.")

(defvar loco--operators
  '("+" "-" "==" "!=" "<" ">" "<=" ">=" "and" "or" "not")
  "Loco operators for tree-sitter font-lock.")

(defvar loco--treesit-font-lock-settings
  (treesit-font-lock-rules
   :language 'loco
   :feature 'comment
   '((comment) @font-lock-comment-face)

   :language 'loco
   :feature 'keyword
   `([,@loco--keywords] @font-lock-keyword-face)

   :language 'loco
   :feature 'string
   '((string) @font-lock-string-face)

   :language 'loco
   :feature 'number
   '((integer) @font-lock-number-face)

   :language 'loco
   :feature 'function
   '((proc_definition name: (identifier) @font-lock-function-name-face))

   :language 'loco
   :feature 'type
   `((composite_definition name: (identifier) @font-lock-type-face)
     (parameter type: (path_ident (identifier) @font-lock-type-face)))

   :language 'loco
   :feature 'variable
   '((identifier) @font-lock-variable-use-face)

   :language 'loco
   :feature 'operator
   `([,@loco--operators] @font-lock-operator-face)

   :language 'loco
   :feature 'bracket
   '((["(" ")" "{" "}" "[" "]"]) @font-lock-bracket-face))
  "Tree-sitter font-lock settings for Loco.")

(defvar loco--treesit-font-lock-feature-list
  '((comment keyword)
    (string number function type variable)
    (operator bracket))
  "Feature list for `treesit-font-lock-fontify-region'.")

;;;###autoload
(define-derived-mode loco-ts-mode prog-mode "Loco"
  "Major mode for editing Loco source code using tree-sitter."
  (when (treesit-ready-p 'loco)
    (setq-local treesit-font-lock-settings loco--treesit-font-lock-settings)
    (setq-local treesit-font-lock-feature-list loco--treesit-font-lock-feature-list)
    (treesit-major-mode-setup)))

;;;###autoload
(add-to-list 'auto-mode-alist '("\\\\.loco\\\\'" . loco-ts-mode))

(provide 'loco-ts-mode)
;;; loco-ts-mode.el ends here
