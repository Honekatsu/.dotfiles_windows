# Windows用.dotfiles

## 使い方

### 1. 必要なパッケージのインストール

Scoopをインストールする

```PowerShell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
```

Gitとchezmoiをインストールする

```PowerShell
winget install -h "twpayne.chezmoi"
winget install -h "Git.Git"
```

Nerd Fontsをインストールする

<https://www.nerdfonts.com/font-downloads>

### 2. リポジトリをクローンする

```PowerShell
git clone --depth=1 git@github.com:Honekatsu/.dotfiles_windows.git ~/.local/share/chezmoi
```

### 3. chezmoiを適用する

```PowerShell
chezmoi apply
```
