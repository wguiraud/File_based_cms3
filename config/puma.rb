# frozen_string_literal: true

# ruby
threads_count = ENV.fetch('MAX_THREADS', 5)
threads threads_count, threads_count

port        ENV.fetch('PORT', 10_000)
environment ENV.fetch('RACK_ENV', 'development')
