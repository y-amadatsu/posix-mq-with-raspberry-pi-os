# RubyとPython間のプロセス間通信を行う(POSIX メッセージキュー)サンプル

## 環境

- OS: Raspbian GNU/Linux 10 (buster)
- ruby: ruby 2.5.7p206 (2019-10-01 revision 67816) [armv7l-linux-eabihf]
  - 利用ライブラリ: posix-mqueue
    - https://github.com/sirupsen/posix-mqueue
- python: Python 2.7.16
  - 利用ライブラリ: posix_ipc
    -  https://pypi.org/project/posix_ipc/

## ruby側のセットアップと起動

```bash
$ cd ruby/
$ bundle
$ bundle exec ruby main.rb
```

## python側のセットアップと起動

```bash
$ cd python/
$ sudo apt install python-pip
$ sudo pip install posix_ipc
$ python main.py
```
