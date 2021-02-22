# windows gvim配置
- :triangular_flag_on_post: [vim-plug](https://github.com/junegunn/vim-plug) 插件管理器安装

将下载的`plug.vim`文件放置在`C:\Users\Administrator\vimfiles\autoload`目录下

`vim-plug`使用（增删需要修改.vimrc中插件配置后在vim窗口中执行）
```
# 安装插件
:PlugInstall
# 卸载插件
:PlugClean
# 更新插件
:PlugUpdate
# 更新vim-plug
:PlugUpgrade
```

- :moyai: .vimrc

覆盖用户目录下（e.g. `C:\Users\Administrator\.vimrc`）

覆盖后，打开`gvim`,第一次打开会报错（vimrc中的插件还未安装），whatever，跳过，执行`:PlugInstall`,显示`Finish`后，关闭`gvim`再次打开。配置完成！enjoy it.

- :clapper: .dll（可选，安装后，需要在.vimrc中打开注释项）

两个`.dll`文件（全屏、透明背景）放置在`vim`安装目录下（默认安装路径为`C:\Program Files (x86)\Vim\vim82\`）

# windows neovim配置
- 在`~\AppData\Local\`目录下新建`nvim`目录，并在`nvim`下新建`autoload`、`plugged`目录
- 下载`plug.vim`放在`autoload`目录下
- 将配置文件`init.vim`放置在`nvim`目录下
