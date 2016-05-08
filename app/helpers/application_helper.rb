module ApplicationHelper
  def full_title(page_title = '')
    base_title = 'Random Emoji'
    if page_title.empty? || page_title == base_title
      base_title
    else
      page_title + ' | ' + base_title
    end
  end

  def emojify(content)
    h(content).to_str.gsub(/:([\w+-]+):/) do |match|
      if emoji = Emoji.find_by_alias($1)
        %(
          <img alt="#$1" title="#$1"
          src="#{image_path("emoji/#{emoji.image_filename}")}"
          style="vertical-align:middle" width="20" height="20" />
        )
      else
        match
      end
    end.html_safe if content.present?
  end
end
