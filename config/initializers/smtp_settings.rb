ActionMailer::Base.smtp_settings = {
    :address              => 'smtp.gmail.com',
    :port                 => 587,
    :domain               => 'gmail.com',
    :user_name            => 'hoasungtest@gmail.com',
    :password             => 'hoasung27031986',
    :authentication       => 'plain',
    :enable_starttls_auto => true
}