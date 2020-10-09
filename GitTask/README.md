Git勉強用
===

### add commit push
```
$ git add ファイル名
$ git commit -m "コミットメッセージ"
$ git push origin ブランチ名
```

### ブランチ変更
```
$ git checkout ブランチ名
$ git pull origin ブランチ名
```

### 新規ブランチ作成 
```
$ git brach ブランチ名
$ git checkout ブランチ名
$ git push -u origin ブランチ名
```
### 各種確認コマンド
```
# ファイルの管理状態
$ git status

# コミット履歴
$ git log

# 切り替えたことのあるブランチ一覧
$ git branch
```