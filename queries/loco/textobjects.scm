; Text object queries for Rail
; Enables structural selections for text navigation.

; Around/inside a block (generic)
(block) @block

; Around a procedure definition
(proc_definition) @function.outer

; Around a composite definition
(composite_definition) @class.outer

; Around an actor definition
(actor_definition) @class.outer

; Around a parameter list
(parameter_list) @parameter.outer

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
