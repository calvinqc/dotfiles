function! helpers#startify#listcommits()
    let git = 'git -C ' . getcwd()
    let commits = systemlist(git . ' log --oneline | head -n5')
    let git = 'G' . git[1:]
    return map(commits, '{"line": matchstr(v:val, "\\s\\zs.*"), "cmd": "'. git .' show ". matchstr(v:val, "^\\x\\+") }')
endfunction

function! devicons#plugins#startify#init() abort
  exec ":function! StartifyEntryFormat() abort \n return 'WebDevIconsGetFileTypeSymbol(absolute_path) .\" \". entry_path' \n endfunction"
endfunction

" vim: tabstop=2 softtabstop=2 shiftwidth=2 expandtab:
