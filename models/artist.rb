require('pg')
require_relative('../db/sql_runner')

class Artist

  attr_reader :id, :name

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
  end

def save()
  sql = "INSERT into artists (name) VALUES ($1) RETURNING id"
  values = [@name]
  result = SqlRunner.run(sql, values)
  @id = result[0]["id"].to_i
end

  # def save()
  #   sql = "INSERT into customers (name) VALUES ($1) RETURNING id"
  #   values = [@name]
  #   result = SqlRunner.run(sql, values)
  #   @id = result[0]["id"].to_i
  # end

end
