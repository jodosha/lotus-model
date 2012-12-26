require 'lotus/model/orm'

module Lotus
  module Model
    VERSION = '0.0.1'

    def self.included(klass)
      klass.class_eval do
        private
        def record
          @record ||= Lotus::Model::ORM[self.class].new
        end
      end
    end
  end
end
