FROM rhuan/ruby-freetds:2.5

WORKDIR /home/vv/

COPY . .

COPY ./entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh   

RUN gem install bundler

RUN bundle install