module VersionsHelper
  def add_version_attribute
    @items.each do |item|
      if item.identifier.to_s.start_with? '/dstu2'
        item[:version] = 'dstu2'
      elsif item.identifier.to_s.start_with? '/may2015'
        item[:version] = 'may2015'
      end
    end
  end
end
