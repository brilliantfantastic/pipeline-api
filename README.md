[ ![Codeship Status for brilliantfantastic/pipeline-api](https://www.codeship.io/projects/2e863cd0-981d-0131-c4f5-32494af887eb/status?branch=master)](https://www.codeship.io/projects/17159)

pipeline api / A simple way to plan your work week
==================================================
***

## DESCRIPTION

The pipeline api is the backend for the [pipeline client application](http://github.com/brilliantfantastic/pipeline).

## INSTALLATION

**Clone the repository**

```sh
git clone git@github.com:brilliantfantastic/pipeline-api.git
```

**Install gem dependencies**

```sh
bundle install
```

**Setup your database**

The development database is a SQLite database.

Create the databases by loading the schema and seed the database:

```sh
rake db:create:all
rake db:migrate
rake db:test:prepare
rake db:seed
```

**Run your tests**

```sh
bundle exec rake test
```

Run your server:

```sh
bundle exec rails s
```
