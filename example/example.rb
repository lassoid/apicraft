APICraft.specification do
  openapi_version "3.1.0"

  info do
    title "Example API"
    summary "Summary"
    description do
      <<~TEXT
        This schema is used for testing purposes.
      TEXT
    end
    terms_of_service "Terms of Service"
    contact do
      name "LassoID"
      url "https://lassoid.ru/"
      email "kirill@lassoid.ru"
    end
    license do
      name "License"
      identifier "License ID"
      url "url"
    end
    version "1.0.0"
  end

  json_schema_dialect "dialect"

  servers do
    element do
      url { "url" }
      description { "description" }
      variables do
        var_name_1 do
          enum { ["value11", "value12"] }
          default { "value11" }
          description { "description1" }
        end
        var_name_2 do
          enum { ["value21", "value22"] }
          default { "value21" }
          description { "description2" }
        end
      end
    end
  end

  paths do
    route "/users" do
      get do
        reference { "endpoints/users_list" }
      end
      post do
        reference { "endpoints/user_create" }
      end
      options do
        # NO
      end
      head do
        # NO
      end
      trace do
        # NO
      end
    end
    route "/users/{id}" do
      parameters do
        element do
          name { "id" }
          in { "path" }
          required { true }
          deprecated { false }
          description { "User ID" }
          schema do
            type { "string" }
          end
        end
      end

      servers do
        element do
          url { "url2" }
        end
      end

      get do
        reference { "endpoints/user_get" }
      end
      put do
        reference { "endpoints/user_update" }
      end
      patch do
        reference { "endpoints/user_update" }
      end
      delete do
        reference { "endpoints/user_delete" }
      end
      options do
        # NO
      end
      head do
        # NO
      end
      trace do
        # NO
      end
    end
  end

  # components do
  #   schemas do
  #     ref { "./components/schemas.yml" }
  #   end
  #   parameters do
  #
  #   end
  #   securitySchemes do
      
  #   end
  # end

  # security do
  #   [
  #     jwt_token  do
        
  #     end,
  #   ]
  # end

  # tags do
  #   "users"
  # end
end
