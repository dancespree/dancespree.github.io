FROM ruby

RUN gem install jekyll
RUN gem install therubyracer

ADD . /app/
EXPOSE 4000

CMD jekyll s
