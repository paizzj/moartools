.hll asm
.frame main
.local int
exit %0

.frame create_knowhow_type
checkarity 1 1
.param[str] name 0
.const[str] repr 'KnowHOWREPR'
.local[obj] rv how method
knowhow @how
findmeth @method @how 'new_type'
.flags obj :str :str
.result @rv
.call @method @how name: @name repr: @repr
return_o @rv

.frame load
.set load
.const[str] fn 'create_knowhow_type'
.local obj
getcode %1 &create_knowhow_type
bindcurhllsym %1 @fn %1
