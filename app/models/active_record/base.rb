module ActiveRecord
  class Base
    def initialize(params = {})
      params.each do |key, value|
        instance_variable_set("@#{key}", value)
        self.class.send(:define_method, key) do
          instance_variable_get("@#{key}")
        end
      end
    end

    def self.create(params)
      columns = params.keys.join(', ')
      values = params.values.map { |y| "'#{y}'" }.join(', ')
      query = "insert into #{table_name}(#{columns}) values(#{values});"

      execute_query(query)
    end

    def self.client
      $client ||= ActiveRecord::Client.new
    end

    def self.execute_query(query = '')
      client.execute_query(query)
    end

    def self.find(id)
      results = execute_query("select * from #{table_name} where id = #{id}")
      raise('Record not found') if results.cmd_tuples.zero?

      new(results.each.first)
    end

    def self.update(params)
      mapped_values = []
      params.each { |key,value| mapped_values << "#{key} = '#{value}'" }
      query = "UPDATE #{table_name} SET #{mapped_values.join(', ')} where id = '#{params[:id]}';"

      execute_query(query)
    end

    def self.destroy(id)
      results = execute_query("delete from #{table_name} where id = #{id}")
      raise('Record not found') if results.cmd_tuples.zero?

      true
    end

    def self.all
      client = ActiveRecord::Client.new
      results = client.execute_query("select * from #{table_name};")

      results.each.map { |row| new(row) }
    end

    def self.table_name
      raise('NotImplementedError')
    end
  end
end
