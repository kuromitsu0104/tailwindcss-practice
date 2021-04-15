FROM ruby:3.0.0

ARG WORKDIR
ARG OME_API_ENDPOINT
ARG ACCESS_TOKEN
ARG REFRESH_TOKEN
ARG EXPIRES_AT

ENV OME_API_ENDPOINT $OME_API_ENDPOINT
ENV ACCESS_TOKEN $ACCESS_TOKEN
ENV REFRESH_TOKEN $REFRESH_TOKEN
ENV EXPIRES_AT $EXPIRES_AT

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update -qq \
    && apt-get install -y nodejs yarn

WORKDIR ${WORKDIR}
COPY . .

RUN bundle install

# RUN mkdir -p ${WORKDIR}/tmp/pids
# RUN mkdir -p ${WORKDIR}/tmp/sockets

# ENV RAILS_ENV "production"
CMD ["rails", "server", "-b", "0.0.0.0"]
# CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]