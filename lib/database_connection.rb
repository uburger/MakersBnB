class DatabaseConnection
  def self.setup
    @connection = 
        ENV['ENVIRONMENT'] == 'test'? 
        :PG.connection(dbname: 'makersbnb_test') 
        : PG.connect(dbname: 'chitter')
  end

  def self.query(sql)
    @connection.exec(sql)
  end
end

