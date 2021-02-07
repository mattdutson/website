## Building and Serving Locally

These instructions assume a working Ruby 2.7 installation (install on macOS via `brew install ruby@2.7`).

After cloning the repo, navigate to this directory and run
```
bundle install --path ./vendor/bundle
```
to install dependencies.

Then to build and serve the webpage, run
```
bundle exec jekyll serve
```
