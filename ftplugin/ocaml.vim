function! s:DebugStringFunBase(desc, var)
  return $'Printf.printf "{a:desc} %d\n" {a:var};'
endfunc

command! -buffer -nargs=0 AddDebugString
            \ put=s:DebugStringFunBase(g:DebugstringPrefixStr(), g:debugStringCounter)
command! -buffer -nargs=1 AddDebugStringExpr
            \ put=s:DebugStringFunBase(<args> . ': ', <args>)

