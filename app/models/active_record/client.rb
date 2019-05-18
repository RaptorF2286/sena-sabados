require 'pg'
module ActiveRecord

  class Client
    def connection
      @connection ||= PG.connect(
        dbname: 'sena_sinatra',
        user: 'postgres',
        password: '123654abc'
      )
    end

    def execute_query(query)
      connection.exec(query)
    end
  end

end
