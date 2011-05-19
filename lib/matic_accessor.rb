module Mongomatic
  module Plugins
    module Accessors
      def self.included(base)
        base.send(:extend, ClassMethods)
      end
      module ClassMethods
        def matic_accessor(*attributes)
          matic_reader(*attributes)
          matic_writer(*attributes)
        end
        def matic_reader(*attributes)
          attributes.each do |attribute|
            define_method(:"#{attribute}") do
              self[attribute]
            end
          end
        end
        def matic_writer(*attributes)
          attributes.each do |attribute|
            define_method(:"#{attribute}=") do |value|
              self[attribute] = value
            end
          end
        end
      end
    end
  end
end