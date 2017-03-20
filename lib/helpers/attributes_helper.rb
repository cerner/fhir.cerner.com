module AttributesHelper
  def add_version_attribute
    @items.each do |item|
      if item.identifier.to_s.include? '/dstu2'
        item[:version] = 'dstu2'
      end
    end
  end

  def add_solution_attribute
    @items.each do |item|
      if item.identifier.to_s.start_with? '/millennium'
        item[:solution] = 'millennium'
      elsif item.identifier.to_s.start_with? '/soarian'
        item[:solution] = 'soarian'
      end
    end
  end
end
