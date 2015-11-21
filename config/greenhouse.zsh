# For the GH app
export PATH=$PATH:/Users/gauthamchandra/development/greenhouse/bin
export PATH=$PATH:/Users/gauthamchandra/development/gh-cli

# Heroku GH stuff
alias devlog="heroku logs --tail -n10000 --app dev-greenhouse"
alias uatlog="heroku logs --tail -n10000 --app uat-greenhouse"
alias devc="heroku run rails console --app dev-greenhouse"
alias uatc="heroku run rails console --app uat-greenhouse"

# Server and DB start/stop
alias nginx-start="sudo nginx -c ~/development/greenhouse/config/development_nginx.conf"
alias nginx-stop="sudo nginx -c ~/development/greenhouse/config/development_nginx.conf -s stop"

alias gh-localhost="bundle exec unicorn -c ~/development/greenhouse/config/unicorn.rb"
alias jben-start="bundle exec puma -C config/puma.rb"

alias sidekiq="DB_POOL=5 bundle exec sidekiq -i 0 -q default -q applications -q jben_distribution"
alias jben-start-st="bundle exec puma --config config/puma.rb --threads 0:1 --workers 1"
alias memcached-start="/usr/local/opt/memcached/bin/memcached -l localhost"
alias flush-memcached="echo 'flush_all' | nc localhost 11211"

export PGHOST=localhost
alias postgres-start="postgres -D /usr/local/var/postgres"

# Rake stuff
alias gh-migrate="rake db:local:migrate"
alias testdb="RAILS_ENV=test bundle exec rake --trace db:test:load db:seed"
alias gh-grab-scrub="bundle exec rake db:local:restore_scrubbed"

