# app_config
我的app配置

1. 执行`./vim/vimrc.sh`导入vimrc.vim中的配置
2. 执行`./git/git.sh`导入git配置，以下是忽略已提交git的.DS_Store文件
```bash
git rm --cached .DS_Store
find . -name .DS_Store -print0 | xargs -0 git rm --ignore-unmatch
```
