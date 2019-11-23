# rails g controller posts
```
     create  app/controllers/posts_controller.rb
      invoke  erb
      create    app/views/posts
      invoke  rspec
      create    spec/controllers/posts_controller_spec.rb
      invoke  helper
      create    app/helpers/posts_helper.rb
      invoke    rspec
      create      spec/helpers/posts_helper_spec.rb
      invoke  assets
      invoke    coffee
      create      app/assets/javascripts/posts.coffee
      invoke    scss
      create      app/assets/stylesheets/posts.scss
```



* now i tried to create the post with the signin of the user for this we need to make the small authenticated system for this i'm just accepting the email just with out the passcode

* Now the same email is stored in the session variable and is checked for the authentication  