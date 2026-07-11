; Locals / scope queries for Rail
; Defines scopes and variable definitions/references for semantic highlighting.

; Scopes
(block) @scope
(proc_definition) @scope
(composite_definition) @scope
(actor_definition) @scope
(_if_expression) @scope

; Variable definitions
; Block-level let bindings
(block
  (statement
    (_block_let
      name: (identifier) @definition)))

; Top-level binding declarations
(binding_declaration
  name: (identifier) @definition)

; Procedure parameter definitions
(parameter
  name: (identifier) @definition)

; Composite field definitions
(composite_field
  name: (identifier) @definition)

; Variable references
; All remaining identifiers in expression positions are references
(expression
  (identifier) @reference)

; Import references to identifiers
(import_declaration
  (identifier) @reference)
