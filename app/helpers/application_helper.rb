module ApplicationHelper
  def format(text)
    sanitize(markdown(text))
  end

  def markdown(text)
    BlueCloth::new(text).to_html
  end

  def facebook_like
    content_tag :iframe, nil, :src => "http://www.facebook.com/plugins/like.php?href=#{CGI::escape(request.url)}&layout=standard&show_faces=true&width=450&action=like&font=arial&colorscheme=light&height=80", :scrolling => 'no', :frameborder => '0', :allowtransparency => true, :id => :facebook_like
  end
end
