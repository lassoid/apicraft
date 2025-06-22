# frozen_string_literal: true

require_relative "apicraft/version"

module APICraft
  class Error < StandardError; end
  
  class << self
    def specification(&block)
      @specification = Specification.new
      @specification.instance_exec(&block)
    end
  end
end
