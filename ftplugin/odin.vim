function! s:DebugStringFunBase(desc, var)
  return $'fmt.println("{a:desc}", {a:var})'
endfunc

command! -buffer -nargs=0 AddDebugString
            \ put=s:DebugStringFunBase(g:DebugstringPrefixStr(), g:debugStringCounter)
command! -buffer -nargs=1 AddDebugStringExpr
            \ put=s:DebugStringFunBase(<args> . ': ', <args>)


