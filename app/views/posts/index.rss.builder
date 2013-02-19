xml.instruct! :xml, :version => "1.0" 
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "UbuntuFeed"
    xml.description "Centralizador de feeds de los blogs mas famosos sobre Ubuntu y Linux en español."
    xml.link posts_url

    for post in @posts
      xml.item do
        xml.title post.title
        xml.pubDate post.pubdate.to_s(:rfc822)
        xml.link post_url(post)
        xml.guid post_url(post)
      end
    end
  end
end
