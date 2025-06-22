# frozen_string_literal: true

module APICraft
  class Info < Node
    def title(value, &block)
      @title = block ? instance_exec(&block).to_s : value.to_s
    end

    def summary(value, &block)
      @summary = block ? instance_exec(&block).to_s : value.to_s
    end

    def description(value, &block)
      @description = block ? instance_exec(&block).to_s : value.to_s
    end

    def terms_of_service(value, &block)
      @terms_of_service = block ? instance_exec(&block).to_s : value.to_s
    end

    def contact(value, &block)
      @contact = Contact.new
      @contact.instance_exec(&block)
    end

    def license(value, &block)
      @license = License.new
      @license.instance_exec(&block)
    end

    def version(value, &block)
      @version = block ? instance_exec(&block).to_s : value.to_s
    end
  end
end
