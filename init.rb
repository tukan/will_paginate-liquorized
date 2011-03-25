# register the WillPaginate Liquid filter - fall through if class doesn't exist
Liquor::Template.register_filter(WillPaginate::Liquidized::ViewHelpers) rescue nil