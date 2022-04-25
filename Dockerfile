FROM ruby:3.1.1

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client npm
RUN npm install -g yarn

RUN mkdir -p /app
COPY . /app
WORKDIR /app

RUN bundle install

# COPY entrypoint.sh /usr/bin/
# RUN chmod +x /usr/bin/entrypoint.sh
# ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000