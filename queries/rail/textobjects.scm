; Text object queries for Rail
; Enables "around function", "around block", "inside block" etc. selections.

; Around/inside a block (generic)
(block) @block

; Around a procedure definition
(proc_definition) @function.outer
(proc_definition
  body: (block) @function.inner)

; Around a composite definition
(composite_definition) @class.outer
(composite_definition
  "{" @class.inner)

; Around an actor definition
(actor_definition) @class.outer

; Around a parameter list
(parameter_list) @parameter.outer
(parameter_list
  "(" @parameter.inner)

; Around a state entry
(state_entry) @function.outer

; Around an import declaration
(import_declaration) @statement.outer

; Around a binding declaration
(binding_declaration) @statement.outer

; Around a route definition
(route_definition) @function.outer

; Around an automation definition
(automation_definition) @function.outer

; Around a conditional expression (if / if-else)
(_if_expression) @conditional.outer
