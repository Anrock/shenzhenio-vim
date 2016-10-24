if exists("b:current_syntax")
  finish
endif

syntax case ignore

syntax keyword shenzhenKeyWord nop mov jmp slp slx add sub mul not dgt dst
highlight link shenzhenKeyWord Statement

syntax keyword shenzhenTest teq tgt tlt tcp
highlight link shenzhenTest Conditional

syntax match shenzhenNumber "\v\d+"
highlight link shenzhenNumber Number

syntax match shenzhenLabel "\v^\a[\a\d_]*:"
syntax match shenzhenLabel "\v\a+"
highlight link shenzhenLabel Label

syntax match shenzhenRegister "\v[xpXP][0-9]"
syntax keyword shenzhenRegister acc dat
highligh link shenzhenRegister Identifier

syntax match shenzhenComment "\v#.*$"
highlight link shenzhenComment Comment

syntax match shenzhenTrueBranch "\v^\+"
syntax match shenzhenFalseBranch "\v^-"
highlight shenzhenTrueBranch ctermbg=DarkGreen
highlight shenzhenFalseBranch ctermbg=DarkRed

let b:colorcolumn=17
let b:current_syntax = "shenzhen"
