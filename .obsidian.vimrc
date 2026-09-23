" .obsidian.vimrc — AstroNvim-style keymaps for Obsidian
" Leader = Space (AstroNvim default). Reload: Settings → Vimrc Support → Reload
" NOTE: plugin v0.10.2 has no `let mapleader` — Space is written out as <Space> below.

" Required for Space chords (Doom/Space fans: same trick)
unmap <Space>

" Basics
set clipboard=unnamed
" j/k move by visual lines (markdown wraps a lot)
nmap j gj
nmap k gk
" AstroNvim escape
imap jj <Esc>
imap jk <Esc>

" ── Ex aliases ──────────────────────────────────────────
" Find (Astro <Space>f)
exmap quickswitch obcommand switcher:open
exmap livesearch obcommand global-search:open
exmap palette obcommand command-palette:open
exmap oldfiles obcommand file-recovery:open
" Files / sidebar (Astro <Space>e/o/n)
exmap togglesideL obcommand app:toggle-left-sidebar
exmap togglesideR obcommand app:toggle-right-sidebar
exmap newfile obcommand file-explorer:new-file
exmap revealfile obcommand file-explorer:reveal-active-file
" Tabs / splits (Astro buffers)
exmap closetab obcommand workspace:close
exmap closeothers obcommand workspace:close-others
exmap tabnext obcommand workspace:next-tab
exmap tabprev obcommand workspace:previous-tab
exmap lasttab obcommand workspace:goto-last-tab
exmap undoclose obcommand workspace:undo-close-pane
exmap splith obcommand workspace:split-horizontal
exmap splitv obcommand workspace:split-vertical
exmap focusL obcommand editor:focus-left
exmap focusR obcommand editor:focus-right
exmap focusT obcommand editor:focus-top
exmap focusB obcommand editor:focus-bottom
" History (wiki = back/forward constantly)
exmap goback obcommand app:go-back
exmap gofwd obcommand app:go-forward
" Wiki links / knowledge (Astro gd/gr + <Space>l)
exmap followlink obcommand editor:follow-link
exmap openbacklinks obcommand backlink:open
exmap openoutlinks obcommand outgoing-links:open
exmap opengraph obcommand graph:open
exmap openlocalgraph obcommand graph:open-local
exmap openoutline obcommand outline:open
exmap insertwikilink obcommand editor:insert-wikilink
exmap insertlink obcommand editor:insert-link
" Editor (Astro <Space>/ + folds + save)
exmap togglecomment obcommand editor:toggle-comments
exmap togglepreview obcommand markdown:toggle-preview
exmap togglesource obcommand editor:toggle-source
exmap togglefold obcommand editor:toggle-fold
exmap foldall obcommand editor:fold-all
exmap unfoldall obcommand editor:unfold-all
exmap savefile obcommand editor:save-file

" ── Find ────────────────────────────────────────────────
" Astro: ff files, fw grep, fb buffers, bb picker, fo old, fk/fC commands
nmap <Space>ff :quickswitch<CR>
nmap <Space>fw :livesearch<CR>
nmap <Space>fb :quickswitch<CR>
nmap <Space>bb :quickswitch<CR>
nmap <Space>fo :oldfiles<CR>
nmap <Space>fk :palette<CR>
nmap <Space>fC :palette<CR>

" ── Files / sidebar ─────────────────────────────────────
" Astro: e toggle tree, o focus tree, n new file
nmap <Space>e :togglesideL<CR>
nmap <Space>o :revealfile<CR>
nmap <Space>n :newfile<CR>

" ── Tabs (your AstroNvim: H/L + ]b/[b) ──────────────────
nmap H :tabprev<CR>
nmap L :tabnext<CR>
nmap ]b :tabnext<CR>
nmap [b :tabprev<CR>
nmap gt :tabnext<CR>
nmap gT :tabprev<CR>
nmap ]t :tabnext<CR>
nmap [t :tabprev<CR>
nmap <Space>c :closetab<CR>
nmap <Space>bc :closeothers<CR>
nmap <Space>bl :lasttab<CR>
nmap <Space>bu :undoclose<CR>

" ── Splits + window nav (Astro: \ | + Ctrl-hjkl) ────────
nmap <Space>\ :splith<CR>
nmap <Space>v :splitv<CR>
nmap <C-h> :focusL<CR>
nmap <C-j> :focusB<CR>
nmap <C-k> :focusT<CR>
nmap <C-l> :focusR<CR>

" ── History ─────────────────────────────────────────────
" If Ctrl-o / Ctrl-i do nothing, remove their default Obsidian hotkeys first
nmap <C-o> :goback<CR>
nmap <C-i> :gofwd<CR>

" ── Wiki: follow / backlinks / graph / outline ──────────
" Astro gd = definition → follow link; gr/R = references → backlinks
nmap gd :followlink<CR>
nmap gb :openbacklinks<CR>
nmap go :openoutlinks<CR>
nmap <Space>lR :openbacklinks<CR>
nmap <Space>lo :openoutlinks<CR>
nmap <Space>ls :openoutline<CR>
nmap <Space>lg :openlocalgraph<CR>
nmap <Space>lG :opengraph<CR>
nmap <Space>ki :insertwikilink<CR>
nmap <Space>km :insertlink<CR>

" ── UI toggles (Astro <Space>u) + comment ──────────────
nmap <Space>up :togglepreview<CR>
nmap <Space>us :togglesource<CR>
nmap <Space>ur :togglesideR<CR>
nmap <Space>/ :togglecomment<CR>

" ── Folds (long sources) ────────────────────────────────
nmap zo :togglefold<CR>
nmap zc :togglefold<CR>
nmap za :togglefold<CR>
nmap zR :unfoldall<CR>
nmap zM :foldall<CR>

" ── Save (Astro Ctrl-s) ─────────────────────────────────
nmap <C-s> :savefile<CR>
