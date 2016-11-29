# vue-webpack-rails

A consistent wrapper for the following application stack:

* Vue.js
  * based on the vue-cli webpack template
  * ES6 and single file components
* Bootstrap
  * based on the bootstrap-loader, but transpiling it through the vue-loader
  * disabled on the .bootstraprc, the jquery.
  * a minimal sass architecture is provided too
* Webpack
  * all the advantages of the advanced asset bundler
  * based on the perfect configuration from the vue-cli webpack template.
* Rails
  * the most consistent and robust web framework powering the backend.
  * it's not just api, but serializers are provided to do so too.
* haml and pug
  * haml for the view generated via rails
  * pug for the ones generated via vue.js
* Postgresql
  * a database with a really powerfull materialized views strategy
* Foreman
  * to have a nice development experience, simply run foreman start.

## Installation:

```shell
npm install
bundle install
bundle exec rails db:create
foreman start
```
