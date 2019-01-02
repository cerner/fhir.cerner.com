module AttributesHelper
  def add_version_attribute
    @items.each do |item|
      if item.identifier.to_s.include? '/dstu2'
        item[:version] = 'dstu2'
	  elsif item.identifier.to_s.include? '/stu3'
        item[:version] = 'stu3'
      end
    end
  end

  def add_solution_attribute
    @items.each do |item|
      if item.identifier.to_s.start_with? '/millennium'
        item[:solution] = 'millennium'
      elsif item.identifier.to_s.start_with? '/soarian-financials'
        item[:solution] = 'soarian-financials'
      elsif item.identifier.to_s.start_with? '/soarian'
        item[:solution] = 'soarian'
      end
    end
  end

  def add_button_attribute
    @items.each do |item|
      item[:header_button] = item.identifier.to_s.start_with?('/millennium', '/smart', '/authorization')
    end
  end
end
