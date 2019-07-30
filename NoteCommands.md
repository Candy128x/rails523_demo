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
- crate CURD operation
- Edit, config/routes.rb 
- append.. `resource :articles`, after `get 'welcome/index'`
- => rails routes
- op:
```
                   Prefix Verb   URI Pattern                                                                              Controller#Action
            welcome_index GET    /welcome/index(.:format)                                                                 welcome#index
             new_articles GET    /articles/new(.:format)                                                                  articles#new
            edit_articles GET    /articles/edit(.:format)                                                                 articles#edit
                 articles GET    /articles(.:format)                                                                      articles#show
                          PATCH  /articles(.:format)                                                                      articles#update
                          PUT    /articles(.:format)                                                                      articles#update
                          DELETE /articles(.:format)                                                                      articles#destroy
                          POST   /articles(.:format)                                                                      articles#create
                     root GET    /                                                                                        welcome#index
       rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
       rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
     rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create
```


---
- create Articles controller
- => rails generate controller Articles
- op:
```
Running via Spring preloader in process 21819
      create  app/controllers/articles_controller.rb
      invoke  erb
      create    app/views/articles
      invoke  test_unit
      create    test/controllers/articles_controller_test.rb
      invoke  helper
      create    app/helpers/articles_helper.rb
      invoke    test_unit
      invoke  assets
      invoke    coffee
      create      app/assets/javascripts/articles.coffee
      invoke    scss
      create      app/assets/stylesheets/articles.scss
```


---
- 