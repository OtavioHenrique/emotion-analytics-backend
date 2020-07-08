threads_count = ENV.fetch("RAILS_MAX_THREADS") { 5 }
threads threads_count, threads_count

preload_app!

rackup DefaultRackup
port        ENV.fetch("PORT") { 3000 }
environment ENV.fetch("RAILS_ENV") { "development" }

bind "unix:///var/run/puma/my_app.sock"
pidfile "/var/run/puma/my_app.sock"

plugin :tmp_restart
