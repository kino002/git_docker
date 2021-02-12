FROM ubuntu:latest

MAINTAINER KINO

#アップデート＆アップグレード
RUN ["/bin/bash", "-c", "apt-get update && apt-get upgrade -y"]

#日本語入力設定（Ubuntu用）
RUN ["/bin/bash", "-c", "apt-get install -y language-pack-ja"]
RUN ["/bin/bash", "-c", "update-locale LANG-ja_JP.UTF-8"]

RUN ["/bin/bash", "-c", "echo 'export LANG=ja_JP.UTF-8' >> ~/.bashrc"]

#タイムゾーン設定
ENV DEBIAN_FRONTEND=noninteractive

RUN ["/bin/bash", "-c", "apt-get install -y tzdata"]

ENV TZ=Asia/Tokyo

#python3インストール
RUN ["/bin/bash", "-c", "apt-get install -y python3 python3-pip python3-venv && pip3 install flake8 pylint"]

#vimインストール
RUN ["/bin/bash", "-c", "apt-get install -y vim"]

#python用vim設定ファイル追加
COPY [".vimrc", "/root/"]

RUN ["/bin/bash", "-c", "mkdir -p ~/.vim/ftplugin"]

#Gitのインストール
RUN ["/bin/bash", "-c", "apt-get install -y git"]

RUN ["/bin/bash", "-c", "git config --global user.name 'kino002'"]

RUN ["/bin/bash", "-c", "git config --global user.email 'ads11468@gmail.com'"]

RUN ["/bin/bash", "-c", "git config --global core.quotepath off"]

#venv作成
RUN ["/bin/bash", "-c", "mkdir -p /work/venvdr"]
RUN ["/bin/bash", "-c", "python3 -m venv work/venvdr"]

#Flaskのvenvへのインストール(venvをアクティブ後)
RUN ["/bin/bash", "-c", "source work/venvdr/bin/activate"]
RUN ["/bin/bash", "-c", "/work/venvdr/bin/pip3 install -U Flask"]
RUN ["/bin/bash", "-c", "mkdir -p work/venvdr/templates"]
RUN ["/bin/bash", "-c", "mkdir -p work/venvdr/static"]
