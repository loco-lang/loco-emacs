; Code folding queries for Rail

; Fold blocks
(block) @fold

; Fold composite bodies
(composite_definition
  "{" @fold
  "}" @fold)

; Fold actor definitions
(actor_definition) @fold

; Fold parameter lists
(parameter_list) @fold

; Fold import selections
(import_declaration
  "{" @fold
  "}" @fold)
