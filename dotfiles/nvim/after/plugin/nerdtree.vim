nnoremap <silent> <C-T> :NERDTreeToggle<CR>

if exists("g:loaded_nerdree_live_preview_mapping")
  finish
endif
let g:loaded_nerdree_live_preview_mapping = 1

call NERDTreeAddKeyMap({
      \ 'key':           'v',
      \ 'callback':      'NERDTreeLivePreview',
      \ 'quickhelpText': 'preview',
      \ })

function! NERDTreeLivePreview()
  " Get the path of the item under the cursor if possible:
  let current_file = g:NERDTreeFileNode.GetSelected()

  if current_file == {}
    return
  else
    exe 'botright pedit '.current_file.path.str()
  endif
endfunction
