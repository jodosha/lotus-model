require 'lotus/model/orm/adapter'

module Lotus
  module Model
    module Orm
      def self.[](klass)
        __klasses[klass] ||= begin
          klass.class_eval %{
            Record = Class.new(Lotus::Model::ORM.adapter).tap do |orm|
              orm.set_table_name(klass)
            end
          }
        end
      end

      def self.adapter
        Adapter.new(@@adapter)
      end

      def self.adapter=(adapter)
        @@adapter = adapter
      end

      private
      def self.__klasses
        @@__klasses ||= {}
      end
    end

    ORM = Orm
  end
end
