# README

Install the gems:  
* `gem install bundler` if needed  
* run `bundle install`  
* Troubleshooting:  
if you have issues with nokogiri when running bundle install, I recommend running:
`gem install nokogiri -- \
    --use-system-libraries \
    --with-xml2-config=/usr/bin/xml2-config \
    --with-xslt-config=/usr/bin/xslt-config`
and then continuing with the `bundle install`

Setup the database, a seed database has been provided:  
* `rake db:create`  
* `rake db:migrate` 
* `rake db:seed`   

* unit tests have been provided, to run:  
(note these are default rails unit tests not spec tests, some other code exercises in the github acct have spec tests)  
run `bin/rails test`

### INSTRUCTIONS TO RUN FUNCTIONS ###

Run query methods:  
* run `rails console`  
* in the rails console grab the first org with `o1 = Org.first`  
* run query for last N events for an org by running the method last_n_events(n)  
for instance `o1.last_n_events(2)` grabs the last 2 events for the o1 org  
* run query for last N events for a specific host within an org by running the method last_n_events_for_host(n)  
for instance `o1.last_n_events_for_host(2,'host1')` grabs the last 2 events for the host "host1" for the o1 org  

Store new events:  
* run `rails console`  
* do something like the following
`e1 = Event.create(org: o1, hostname: "host1")`
