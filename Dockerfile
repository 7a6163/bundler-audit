FROM ruby:2.6.6-alpine3.12 as builder

RUN apk add --update --no-cache git
RUN gem install bundler -v 2.1.4
RUN gem install bundler-audit -v 0.7.0.1
RUN bundle audit update
ADD Rakefile /scripts/Rakefile

FROM builder
WORKDIR /tmp
ENTRYPOINT ["rake", "-f", "/scripts/Rakefile"]
