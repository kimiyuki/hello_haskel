# 日々の気づき

## day1 
- put...文字列をstdout。 putStrLn :: String -> IO ()
- print なにかをstdout. print :: Show a => a-> IO ()
- `::` は、こういう定義？型シグネチャを書く。その後にパターン別の適用方法？意味？を書く。　
- 適用方法？の記号？の並べ方。関数が先頭にきて.. IOなら入力・出力が来る？??
- mapは、関数をリストに写像する。リストのここの要素を関数を使って別のリストにする。ではない？
- sum :: (Num a, Foldable t) => t a -> a
- sum = foldl' (+) 0
- 初期値を適用演算のシンボル？で畳み込む?
- IO () ...これは、、IOに関する操作? の意味？
- (x:xs)、:で、リストで最初の要素と残りの要素リスト？に分けて考えることができる?

## day2
### preview
- day1のreveiw: consの再帰構造。 data List a = Nil | Cons a (List a)
- consは、先頭要素と残りのリストという構造に分かれている。
### review
- map, filter, foldl' をやった。簡単な意味構造。mapしてfoldlして。。
- 関数合成の書き方。右から左。引数かかずに定義できる。