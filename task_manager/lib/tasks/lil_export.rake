namespace :lil do
  desc "Export RoR EssT SQL data"
  task :export => [:environment] do
    env_config = ENV["RAILS_ENV"] || 'development'
    db_config = Rails.configuration.database_configuration[env_config]

    h = db_config['host'] || 'localhost'
    u = db_config['username']
    p = db_config['password']
    db = db_config['database']
    backup_file = Rails.root.join("db", "#{db}.sql")
    f = Shellwords.escape(backup_file)
    opt = "--quick --add-drop-table --skip-add-locks --skip-comments --skip-disable-keys --skip-lock-tables --skip-create-options --skip-tz-utc --skip-set-charset"
    cmd = "mysqldump -h #{h} -u #{u} --password=#{p} #{opt} #{db} > #{f}"

    verbose(false) do
      sh "rm -f #{f}"
      sh cmd do |ok, _res|
        if ok
          puts "Exported: #{f}"
        else
          puts "Export failed"
        end
      end
    end
  end

end
