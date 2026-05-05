# GitHub への公開手順

このドキュメントでは、現在の `TraeStack` リポジトリを GitHub に公開する方法と、他の人がそれを pull してローカルの Trae 環境へ配置する方法を説明します。

## 1. GitHub でリポジトリを作成する

まず GitHub 上で空のリポジトリを作成します。例：

- リポジトリ名：`TraeStack`
- 公開設定：`Public` または `Private`
- 初期化オプション：`README`、`.gitignore`、`license` は選択しない

作成後、GitHub から以下のようなリモート URL が発行されます。

```bash
https://github.com/<your-name>/TraeStack.git
```

または：

```bash
git@github.com:<your-name>/TraeStack.git
```

## 2. ローカルで最初のコミットを行う

現在のディレクトリがまだ git リポジトリとして初期化されていない場合：

```bash
git init
git add .
git commit -m "feat: initialize traestack skills repo"
git branch -M main
git remote add origin <GitHub リポジトリ URL>
git push -u origin main
```

## 3. すでにローカルが git リポジトリの場合

まず現在の remote を確認します。

```bash
git remote -v
```

まだ `origin` が無い場合：

```bash
git remote add origin <GitHub リポジトリ URL>
git push -u origin main
```

すでに `origin` があるが URL が違う場合：

```bash
git remote set-url origin <GitHub リポジトリ URL>
git push -u origin main
```

## 4. 以後の更新フロー

更新のたびに次を実行します。

```bash
python3 scripts/validate_skills.py
git status
git add .
git commit -m "feat: update traestack skills"
git push
```

## 5. GitHub ホームに表示しておくとよいファイル

リポジトリを開いた人がすぐ理解できるよう、以下のファイルを見える形で保つことを推奨します。

- `README.md`：リポジトリのホーム説明
- `skills/README.md`：skill 一覧
- `skills/ROUTING.md`：ルーティングガイド
- `skills/NAVIGATION.zh-CN.md`：中国語ナビゲーション
- `OFFICE-HOURS.zh-CN.md`：能力境界の説明

## 6. 他の人がこのリポジトリを使う方法

まずリポジトリを clone します。

```bash
git clone <GitHub リポジトリ URL>
cd TraeStack
```

その後、対象 OS に応じてワンクリック配置スクリプトを実行します。

### Linux

```bash
bash scripts/deploy-linux.sh
```

### macOS

```bash
bash scripts/deploy-macos.sh
```

### Windows PowerShell

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\deploy-windows.ps1
```

## 7. 既定の配置先

- Linux：`~/.trae/skills`
- macOS：`~/.trae/skills`
- Windows：`%USERPROFILE%\.trae\skills`

## 8. よくある質問

### 8.1 `git push` で権限エラーが出る

通常は、対象リポジトリへの書き込み権限が無いか、認証方法に問題があります。

まず以下を確認してください。

- GitHub にログインしているか
- HTTPS の場合、有効な token が設定されているか
- SSH key が GitHub に登録されているか

### 8.2 配置後に Trae が新しい skill を検出しない

以下を確認してください。

- 配置先ディレクトリが正しいか
- `skills/<name>/SKILL.md` が存在するか
- Trae を再起動したか、または skill 検出を更新したか
- 先に `python3 scripts/validate_skills.py` を実行したか

### 8.3 カスタムディレクトリへ配置したい

3 つの配置スクリプトはすべて環境変数で配置先を上書きできます。

- Linux/macOS：`TRAESTACK_TARGET_DIR`
- Windows：`$env:TRAESTACK_TARGET_DIR`

例：

```bash
TRAESTACK_TARGET_DIR=/tmp/trae-skills bash scripts/deploy-linux.sh
```

```powershell
$env:TRAESTACK_TARGET_DIR = "D:\temp\trae-skills"
powershell -ExecutionPolicy Bypass -File .\scripts\deploy-windows.ps1
```
