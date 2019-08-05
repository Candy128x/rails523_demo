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
- creating model
- => rails generate model Article title:string text:text
- op:
```
Running via Spring preloader in process 25895
      invoke  active_record
      create    db/migrate/20190730072805_create_articles.rb
      create    app/models/article.rb
      invoke    test_unit
      create      test/models/article_test.rb
      create      test/fixtures/articles.yml
```


---
- Running Migration
- => rails db:migrate
- op:
```
== 20190730072805 CreateArticles: migrating ===================================
-- create_table(:articles)
   -> 0.0018s
== 20190730072805 CreateArticles: migrated (0.0020s) ==========================
```


---
- crate database via CLI
- add database config(database, user name, password) in `config/database.yml`
- => rake db:crate
- (view type of user - => psql -U rails_user)


---
## Adding Second Model
- generating model
- => rails generate model Comment commenter:string body:text article:references
- op:
```
Running via Spring preloader in process 12068
      invoke  active_record
      create    db/migrate/20190731072335_create_comments.rb
      create    app/models/comment.rb
      invoke    test_unit
      create      test/models/comment_test.rb
      create      test/fixtures/comments.yml
```


---
- => rails db:migrate
- op:
```
== 20190731091134 CreateComments: migrating ===================================
-- create_table(:comments)
   -> 0.3376s
== 20190731091134 CreateComments: migrated (0.3377s) ==========================
```



---
- => rails generate controller Comments
- op:
```
Running via Spring preloader in process 5872
      create  app/controllers/comments_controller.rb
      invoke  erb
      create    app/views/comments
      invoke  test_unit
      create    test/controllers/comments_controller_test.rb
      invoke  helper
      create    app/helpers/comments_helper.rb
      invoke    test_unit
      invoke  assets
      invoke    coffee
      create      app/assets/javascripts/comments.coffee
      invoke    scss
      create      app/assets/stylesheets/comments.scss
```

---
## Add pagination
- open `Gemfile` add `gem 'kaminari'`
- => bundle install

- => rails g kaminari:config
- op:
```
create  config/initializers/kaminari_config.rb
```

- open controller file
- in def function, Write `@articles = Article.order(:id).page(params[:page])` instead of `@articles = Article.all`

- open index.html.erb file
- write `<%= paginate @articles %>` 

- impliment bootstrap3 in pagination
- => rails g kaminari:views bootstrap3 
- op:
```
      downloading app/views/kaminari/_first_page.html.erb from kaminari_themes...
      create  app/views/kaminari/_first_page.html.erb
      downloading app/views/kaminari/_gap.html.erb from kaminari_themes...
      create  app/views/kaminari/_gap.html.erb
      downloading app/views/kaminari/_last_page.html.erb from kaminari_themes...
      create  app/views/kaminari/_last_page.html.erb
      downloading app/views/kaminari/_next_page.html.erb from kaminari_themes...
      create  app/views/kaminari/_next_page.html.erb
      downloading app/views/kaminari/_page.html.erb from kaminari_themes...
      create  app/views/kaminari/_page.html.erb
      downloading app/views/kaminari/_paginator.html.erb from kaminari_themes...
      create  app/views/kaminari/_paginator.html.erb
      downloading app/views/kaminari/_prev_page.html.erb from kaminari_themes...
      create  app/views/kaminari/_prev_page.html.erb
```

- for delete
- => rails d kaminari:views bootstrap3
- op:
```
      downloading app/views/kaminari/_first_page.html.erb from kaminari_themes...
      remove  app/views/kaminari/_first_page.html.erb
      downloading app/views/kaminari/_gap.html.erb from kaminari_themes...
      remove  app/views/kaminari/_gap.html.erb
      downloading app/views/kaminari/_last_page.html.erb from kaminari_themes...
      remove  app/views/kaminari/_last_page.html.erb
      downloading app/views/kaminari/_next_page.html.erb from kaminari_themes...
      remove  app/views/kaminari/_next_page.html.erb
      downloading app/views/kaminari/_page.html.erb from kaminari_themes...
      remove  app/views/kaminari/_page.html.erb
      downloading app/views/kaminari/_paginator.html.erb from kaminari_themes...
      remove  app/views/kaminari/_paginator.html.erb
      downloading app/views/kaminari/_prev_page.html.erb from kaminari_themes...
      remove  app/views/kaminari/_prev_page.html.erb
```


---
### User login-logout
- add in Gemfile, `gem 'bcrypt', '~> 3.1.7'`
- => bundle

- => rails g scaffold User email:uniq password:digest
- op:
```
      invoke  active_record
      create    db/migrate/20190805091106_create_users.rb
      create    app/models/user.rb
      invoke    test_unit
      create      test/models/user_test.rb
      create      test/fixtures/users.yml
      invoke  resource_route
       route    resources :users
      invoke  scaffold_controller
      create    app/controllers/users_controller.rb
      invoke    erb
      create      app/views/users
      create      app/views/users/index.html.erb
      create      app/views/users/edit.html.erb
      create      app/views/users/show.html.erb
      create      app/views/users/new.html.erb
      create      app/views/users/_form.html.erb
      invoke    test_unit
      create      test/controllers/users_controller_test.rb
      create      test/system/users_test.rb
      invoke    helper
      create      app/helpers/users_helper.rb
      invoke      test_unit
      invoke    jbuilder
      create      app/views/users/index.json.jbuilder
      create      app/views/users/show.json.jbuilder
      create      app/views/users/_user.json.jbuilder
      invoke  assets
      invoke    coffee
      create      app/assets/javascripts/users.coffee
      invoke    scss
      create      app/assets/stylesheets/users.scss
      invoke  scss
      create    app/assets/stylesheets/scaffolds.scss
```


- => rails db:migrate
- op:
```
== 20190805091106 CreateUsers: migrating ======================================
-- create_table(:users)
   -> 1.3919s
-- add_index(:users, :email, {:unique=>true})
   -> 0.2007s
== 20190805091106 CreateUsers: migrated (1.5963s) =============================
```


- open user model file, app/model/user.rb
- add `validates :email, presence: true, uniqueness: true`


---
### session
- => rails g controller sessions new create destroy
- op:
```
      create  app/controllers/sessions_controller.rb
       route  get 'sessions/new'
get 'sessions/create'
get 'sessions/destroy'
      invoke  erb
      create    app/views/sessions
      create    app/views/sessions/new.html.erb
      create    app/views/sessions/create.html.erb
      create    app/views/sessions/destroy.html.erb
      invoke  test_unit
      create    test/controllers/sessions_controller_test.rb
      invoke  helper
      create    app/helpers/sessions_helper.rb
      invoke    test_unit
      invoke  assets
      invoke    coffee
      create      app/assets/javascripts/sessions.coffee
      invoke    scss
      create      app/assets/stylesheets/sessions.scss
```


---
- make some changes 
- @ref
>https://medium.com/@wintermeyer/authentication-from-scratch-with-rails-5-2-92d8676f6836


---
### for Search
- edit `article/index.html.rb` file
- add this...
```
<%= form_tag(articles_path, :method => "get", id: "search-form") do %>
  <%= text_field_tag :search, params[:search], placeholder: "Search Article" %>
  <%= submit_tag "Search" %>
<% end %>
```

- edit `article/index.html.rb` file
- add this...
```
<%= form_tag(articles_path, :method => "get", id: "search-form") do %>
  <%= text_field_tag :search, params[:search], placeholder: "Search Article" %>
  <%= submit_tag "Search" %>
<% end %>
```

- edit `controller/articles_controller.rb` file
- add this...
```
        if params[:search]
            @articles = Article.search(params[:search]).order("created_at DESC").page(params[:page])
        else
            @articles = Article.all.order('created_at DESC').page(params[:page])
        end
```


---
### URL / Function / Module base Authorization
- add in controller file
- code:
```
        user = User.find_by_email(params[:email])
        if user && user.authenticate(params[:password])
            
            # Statment / business logic          
            
            session[:user_id] = user.id
            render 'url'
        else
            redirect_to '/login'
        end
```