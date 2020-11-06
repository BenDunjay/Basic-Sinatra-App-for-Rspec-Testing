# Suite level hook - typical hook will run before each example. This one will run just once, after all specs have been loaded but before first one actually runs.

RSpec.configure do |c|
  c.before (:suite) do
    Sequel.extension :migration
    Sequel::Migrator.run(DB, "db/migrations")
    DB[:expenses].truncate
  end

  c.around(:example, :db) do |example|
    DB.transaction(rollback: :always) { example.run }
  end
end
