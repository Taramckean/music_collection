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

def self.delete_all()
  sql = "DELETE FROM artists"
  SqlRunner.run(sql)
end

def self.all()
  sql = "SELECT * FROM artists;"
  artists = SqlRunner.run(sql)
  return artists.map {|artist|Artist.new(artist)}
end


# def self.all()
#   sql = "SELECT * FROM customers;"
#   customers = SqlRunner.run(sql)
#   return customers.map {|person|Customer.new(person)}
# end

end
