GHCi (Haskell REPL) useful commands
===

:r                          # reload the currently loaded hs file

:t  <type>                  # show the type of an expression (i.e. :type 1 + 1, type x)

:info  <type>  (or :i)      # show the information about a type/function

:doc <type>                 # show the documentation

# Modules

:load mymodule.hs           # load a module (file)

:load                       # remove all modules

:add   myfile.hs            # add a haskell module (file)

:module (+ | -) <mod>       # add a module in the execution scope

:module (or :m)             # unload all loaded modules

:reload (or :r)             # reload all loaded modules

:browse                     # browse declarations in the current module

:browse <module>            # browse declarations in <module>

:show modules

:set prompt "λ> "           # Change the prompt to smth. cool
:unset prompt

# Editing expressions in HGCi

:{  # start a multiline command
:}  # and a multiline command


:?                # show help
:q   # quit
