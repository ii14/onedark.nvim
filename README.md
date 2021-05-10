# onedark.nvim

The brief story is that I was investigating my startup performance and aside from my
vimrc, [joshdick/onedark.vim](https://github.com/joshdick/onedark.vim) along with polyglot
turned out to be the biggest offender. Since compatibility with vim is not that important
for me, there is no good reason to spend so much time on initializing a color scheme and I
just rewrote the entire thing in lua to see if it helps. And it did helped, it's now about
3 times faster.

If it wasn't obvious from the plugin name and the mention of lua, it requires neovim and
probably at least version 0.5.0. Options `g:onedark_color_overrides`,
`g:onedark_termcolors`, `g:onedark_hide_endofbuffer` and `g:onedark_terminal_italics` are
all ported. I didn't bother to port functions, like `onedark#extend_highlight` etc. Works
with lightline, but I haven't tested it with airline.

```vim
if has('nvim-0.5.0')
  Plug 'ii14/onedark.nvim'
else
  Plug 'joshdick/onedark.vim'
endif
```

All the credits goes to the author of the original plugin,
[joshdick/onedark.vim](https://github.com/joshdick/onedark.vim).
