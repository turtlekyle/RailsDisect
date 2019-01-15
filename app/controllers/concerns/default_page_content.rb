module DefaultPageContent
    extend ActiveSupport::Concern

    included do
        before_action :set_page_defaults    
end

def set_page_defaults
    @page_title = "Disecting Rails | Learning Rails"
    @seo_keywords = "Kyles special website creation"
  end 
end