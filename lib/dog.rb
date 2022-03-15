class Dog
attr_accessor :name, :breed, :id

def initialize(name:, breed:, id: nil)
    @id = id
    @name = name
    @breed = breed
end
    def self.create_table
        sql = <<-SQL
        CREATE TABLE IF NOT EXISTS dog (
            id INTEGER PRIMARY KEY,
            name TEXT,
            breed TEXT
        )
        SQL
        DB[:conn].execute("DROP TABLE IF EXISTS dogs")

        end
end
