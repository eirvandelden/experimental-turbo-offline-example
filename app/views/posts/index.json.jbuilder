json.array! @posts do |post|
  json.set! :href, post_url(post)
end
