module ClassEvalModule
  def print_string_instance_method
    puts 'Instance Method'
  end

  module ClassMethods
    def print_string_class_method
      puts 'Class Method'
    end
  end

  def self.included(base)
    # base.extend ClassMethods

    base.class_eval do
      extend ClassMethods
      belongs_to :post
    end

    # base.instance_eval
  end
end