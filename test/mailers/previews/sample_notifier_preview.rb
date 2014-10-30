# Preview all emails at http://localhost:3000/rails/mailers/sample_notifier
class SampleNotifierPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/sample_notifier/sample_mail
  def sample_mail
    SampleNotifier.sample_mail
  end

end
