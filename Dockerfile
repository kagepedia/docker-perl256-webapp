FROM perl:5.26

# apt update
RUN apt update

# vim install
RUN apt -y install vim

# git install
RUN apt -y install git

# apache install
RUN apt -y install apache2
CMD [ "/etc/init.d/apache2", "start" ]

# apache2設定作成
COPY www/ /var/www

# conf書き換え
# https://qiita.com/ninneko/items/87a76f0f1dc6d82500fb
# service apache2 reload
# https://qiita.com/kummn/items/f6bd0f3e643595ed077a

# mysql install

# mtsqlの設定作成

RUN cpan install Module::Build
