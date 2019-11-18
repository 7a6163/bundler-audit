FROM ruby:2.6.5-alpine3.10 as builder

RUN apk add --update --no-cache git
RUN gem install bundler -v 2.0.2
RUN gem install bundler-audit -v 0.6.1
RUN bundle audit update
ADD Rakefile /scripts/Rakefile

FROM builder
WORKDIR /tmp
ENTRYPOINT ["rake", "-f", "/scripts/Rakefile"]