# Commands
	
---
- description..
- => pwd


---
- create new project
- => rails new demo


---
- start server
- => rails s `or`
- => rails server
- op:
```
=> Booting Puma
=> Rails 5.2.3 application starting in development 
=> Run `rails server -h` for more startup options
Puma starting in single mode...
* Version 3.12.1 (ruby 2.6.3-p62), codename: Llamas in Pajamas
* Min threads: 5, max threads: 5
* Environment: development
* Listening on tcp://localhost:3000
Use Ctrl-C to stop
Started GET "/" for 127.0.0.1 at 2019-07-29 18:38:14 +0530
Processing by Rails::WelcomeController#index as HTML
  Rendering /home/ashish/.rvm/gems/ruby-2.6.3/gems/railties-5.2.3/lib/rails/templates/rails/welcome/index.html.erb
  Rendered /home/ashish/.rvm/gems/ruby-2.6.3/gems/railties-5.2.3/lib/rails/templates/rails/welcome/index.html.erb (44.9ms)
Completed 200 OK in 126ms (Views: 77.3ms | ActiveRecord: 0.0ms)


Started GET "/" for 127.0.0.1 at 2019-07-29 18:41:42 +0530
Processing by Rails::WelcomeController#index as HTML
  Rendering /home/ashish/.rvm/gems/ruby-2.6.3/gems/railties-5.2.3/lib/rails/templates/rails/welcome/index.html.erb
  Rendered /home/ashish/.rvm/gems/ruby-2.6.3/gems/railties-5.2.3/lib/rails/templates/rails/welcome/index.html.erb (5.1ms)
Completed 200 OK in 12ms (Views: 7.2ms | ActiveRecord: 0.0ms)
```


---
- crate controller
- => rails generate controller Welcome index
- op:
```
Running via Spring preloader in process 10715
      create  app/controllers/welcome_controller.rb
       route  get 'welcome/index'
      invoke  erb
      create    app/views/welcome
      create    app/views/welcome/index.html.erb
      invoke  test_unit
      create    test/controllers/welcome_controller_test.rb
      invoke  helper
      create    app/helpers/welcome_helper.rb
      invoke    test_unit
      invoke  assets
      invoke    coffee
      create      app/assets/javascripts/welcome.coffee
      invoke    scss
      create      app/assets/stylesheets/welcome.scss
```


---
- 