FROM ruby

RUN apt-get update
RUN apt-get install -y nodejs
RUN gem install jekyll

ADD . /app/
WORKDIR /app/
EXPOSE 4000

CMD jekyll serve --host 0.0.0.0
