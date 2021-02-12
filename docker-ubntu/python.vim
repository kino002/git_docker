"「Tab」を「スペース」に置き換える
setlocal expandtab

"「Tab」の「インデント幅」を４にする
setlocal tabstop=4

"自動インデントした時の「インデント幅」を４にする
setlocal shiftwidth=4

"キーボードの「Tab」キーを押したときのスペースの数
"0を設定すると「tabstop」で設定された数のスペースが挿入されます
setlocal softtabstop=0

"保存するタイミングで行末のスペース除去する
autocmd BufWritePre * :%s/\s\+$//ge

"行の折り返しを80文字にする
setlocal textwidth=80
