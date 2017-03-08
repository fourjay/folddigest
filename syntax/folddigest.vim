" Set buffer local syntax and mapping
syntax match folddigestLinenr display "^\s*\d\+"
syntax match folddigestTreemark display "\%(| \)*+--"
syntax match folddigestFirstline display "\^$"
syntax match folddigestLastline display "\$$"
hi def link folddigestLinenr Linenr
hi def link folddigestTreemark Identifier
hi def link folddigestFirstline Identifier
hi def link folddigestLastline Identifier
