module ApplicationHelper
  
  # Return a title on a per-page basis.
  def title
    base_title = "Mini Tweet IODB"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
  
  def logo
    image_tag("logo.png", :alt => "Mini tweet", :class => "round")
  end
end
