desc "Sending Mail Magazine"
task :mail_task => :environment do
  SampleNotifier.sample_mail.deliver
end