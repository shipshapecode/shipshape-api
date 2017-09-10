class BlogPostResource < JSONAPI::Resource
  attributes :author, :date, :slug, :text, :title
end
