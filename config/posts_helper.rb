module PostsHelper

    def display_url(post)
        if url.start_with?("http://")
            link_to post.url, url
         else
            link_to post.url, "http://" + post.url
		end
    end
end