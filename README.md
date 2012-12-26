# Lotus::Model

Model layer for Lotus.

## Philosophy

We love Models in our applications to be plain Ruby objects, in order to have a better OOP design
and fast (very, very fast) tests.

## Installation

Add this line to your application's Gemfile:

    gem 'lotus-model'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install lotus-model

## Usage

By including `Lotus::Model` an inner-class is created at the runtime
and exposed with an private method called `record`.

    require 'lotus-model'

    Lotus::Model::ORM.adapter = :sequel
    Lotus::Model::ORM.connect 'sqlite://database.db'

    class Flower
      include Lotus::Model
    end

    flower = Flower.new
    record = flower.send(:record)

    record.inspect          # => #<Flower::Record @values={}>
    record.class            # => Flower::Record
    record.class.superclass # => Sequel::Model
    record.class.table_name # => :flowers

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
