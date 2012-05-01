module ApplicationHelper

#Return a title helper on a per page basis
def title
	base_title = "discover and share the earth with mapmatic"
	if @title.nil?
	 base_title
	else
	"#{@title} | #{base_title}"
end
end
end
