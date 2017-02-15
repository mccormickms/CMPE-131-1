module ApplicationHelper

	def full_title(page_title = '') # sets page title on tab in case of no specified title 
		base_title = "Chore Weasel"
			if page_title.empty?
				base_title
			else
				page_title + " | " + base_title
			end
	end
end
