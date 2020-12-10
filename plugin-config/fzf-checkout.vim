" source: https://github.com/stsewd/fzf-checkout.vim

nma <C-g> :GBranches --locals<cr>

let g:fzf_checkout_git_options = '--sort=-committerdate'

let g:fzf_tag_actions = {
      \ 'checkout': {'execute': '!{git} checkout {branch}'},
      \}
