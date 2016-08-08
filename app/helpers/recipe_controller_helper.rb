module RecipeControllerHelper
	def sanitize_html(item)
		full_sanitizer = Rails::Html::FullSanitizer.new
		full_sanitizer.sanitize(item)
	end
end
