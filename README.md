# Pusher Realtime Chat Example

The goal of this project is to show step-by-step how to build
a realtime chat application with [Pusher][pusher] and [Ruby on Rails][rails].

## Prerequisites

- [RVM](http://rvm.io/)
- [Rails][rails]
- [Git](http://git-scm.com/)

## Getting Started

```bash
$ cd ~/your-project-folder

# Create a gemset named pusher-realtime-chat-example
$ rvm use 2.1.1@pusher-realtime-chat-example --create

$ gem install rails
$ rails new pusher-realtime-chat-example --skip-test-unit

$ cd pusher-realtime-chat-example

# Create the .ruby-version and .ruby-gemset files so that
# whenever you return to the project directory it will
# automatically use the correct Ruby version and gemset
$ rvm use 2.1.1@pusher-realtime-chat-example --ruby-version

$ bin/rails s
```

Now open your browser and navigate to http://localhost:3000. If  everything was
set up correctly you'd see the "Welcome aboard" page as shown below.

![Welcome aboard](doc/assets/images/ruby-on-rails-welcome-aboard.png)

Great! Let's commit.

```bash
$ git init
$ git add .
$ git commit -m "Initial commit"
```

[pusher]: http://pusher.com/
[rails]: http://rubyonrails.org/
