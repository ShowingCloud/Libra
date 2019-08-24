threads 0,16
workers 1
preload_app!

environment 'production'
daemonize
pidfile '/var/www/rails/qzzstore/store/tmp/pids/puma.pid'
state_path '/var/www/rails/qzzstore/store/tmp/pids/puma.state'
stdout_redirect '/var/www/rails/qzzstore/store/log/stdout', '/var/www/rails/qzzstore/store/log/stderr', true

bind 'tcp://0.0.0.0:3220'
tag 'Libra Production'
