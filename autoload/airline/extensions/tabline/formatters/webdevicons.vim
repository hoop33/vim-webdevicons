function! airline#extensions#tabline#formatters#webdevicons#format(bufnr, buffers)
  " Call original formatter.
  let originalFormatter = airline#extensions#tabline#formatters#{g:_webdevicons_airline_orig_formatter}#format(a:bufnr, a:buffers)
  return originalFormatter . ' ' . WebDevIconsGetFileTypeSymbol(bufname(a:bufnr)) . ' '
endfunction

" modeline syntax:
" vim: fdm=marker tabstop=2 softtabstop=2 shiftwidth=2 expandtab:
