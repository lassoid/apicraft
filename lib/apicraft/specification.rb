# frozen_string_literal: true

module APICraft
  class Specification < Node
    def openapi_version(value, &block)
      @openapi_version = block ? instance_exec(&block).to_s : value.to_s
    end

    def info(&block)
      @info = Info.new
      @info.instance_exec(&block)
    end

    def json_schema_dialect(value, &block)
      @json_schema_dialect = block ? instance_exec(&block).to_s : value.to_s
    end

    def servers(&block)
      @servers = Server.new
      @servers.instance_exec(&block)
    end
  end
end
