module BlogPostHelper
  def blog_post_status(blog_post)
    return 'Draft'     if blog_post.draft?
    return 'Published' if blog_post.published?
    'Scheduled'
  end
end
