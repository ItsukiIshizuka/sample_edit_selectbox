# README

### gem list
・ pry-rails
・ jquery-rail https://github.com/rails/jquery-rails
・ haml-rails https://github.com/haml/haml-rails
・ ancestry https://github.com/stefankroes/ancestry

## 導入手順
### ancestry
・ gem "ancestry"を導入
・ rails g migration add_ancestry_to_categories ancestry:string:index
   上記コマンドで"ancestry"カラムを任意のテーブルに追加
・ 任意モデル.rbに "has_ancestry"の記述を追加

# What
・セレクトボックスの編集
→ "ancestry"にて"親・子・孫"の３世代の形で実装
→ "登録時"には、孫まで選択する必要あり(varidationをかけているため)
→ "編集時"は孫まで選択済みの状態で画面に表示
***セレクトボックスは"親を選択"→"子が出現"→"子を選択"→"孫が出現"の状態にしてある***

# Why
・セレクトボックス編集時に、新規登録時のJSが当たってしまいボックスが余計に増えてしまう状態なので、修正・解決するため。