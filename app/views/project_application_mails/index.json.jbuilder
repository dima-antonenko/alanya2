json.array!(@project_application_mails) do |project_application_mail|
  json.extract! project_application_mail, :id
  json.url project_application_mail_url(project_application_mail, format: :json)
end
