class ContactResource < JSONAPI::Resource
  attributes :company, :description, :email, :name, :project_type
end