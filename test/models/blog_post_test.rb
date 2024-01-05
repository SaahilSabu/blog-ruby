require "test_helper"

class BlogPostTest < ActiveSupport::TestCase
  test "returns true if the post is draft" do
    assert blog_posts(:draft).draft?
  end
  test "returns false if the post is published" do
    refute blog_posts(:published).draft?
  end
  test "returns false if the post is scheduled" do
    refute blog_posts(:scheduled).draft?
  end
  test "returns true if the post is published" do
    assert blog_posts(:published).published?
  end
  test "returns false if the post is draft" do
    refute blog_posts(:draft).published?
  end
  test "returns false if the post is scheduled" do
    refute blog_posts(:scheduled).published?
  end
  test "returns true if the post is scheduled" do
    assert blog_posts(:scheduled).scheduled?
  end
  test "returns false if the post is draft" do
    refute blog_posts(:draft).scheduled?
  end
  test "returns false if the post is published" do
    refute blog_posts(:published).scheduled?
  end
  
end
