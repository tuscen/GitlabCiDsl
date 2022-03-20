# frozen_string_literal: true

require 'yajl'
require_relative 'src/gitlab'

ENV['CI_PROJECT_DIR'] = __dir__
ENV['ENVIRONMENT_NAME'] = 'dev'
ENV['DYNAMIC_URL'] = 'https://foo.example.com'
ENV['APP_DOMAIN'] = '365.dev.helix.ru'

gitlabfile = Gitlab.read_pipeline 'Gitlabfile'

gitlab = Yajl::Encoder.encode(gitlabfile.serialize, pretty: true)
puts gitlab
