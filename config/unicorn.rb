rails_root = File.expand_path('../../', __FILE__)
　
worker_processes 2
working_directory rails_root
　
listen "#{rails_root}/tmp/sockets/unicorn.sock"
pid "#{rails_root}/tmp/pids/unicorn.pid"
　
stderr_path "#{rails_root}/log/unicorn_error.log"
stdout_path "#{rails_root}/log/unicorn.log"

listen File.expand_path('/var/www/projects/sample-app/tmp/unicorn/unicorn.sock', __FILE__)
