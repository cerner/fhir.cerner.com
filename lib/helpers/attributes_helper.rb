# frozen_string_literal: true

module AttributesHelper
  def add_version_attribute
    @items.each do |item|
      if item.identifier.to_s.include? '/dstu2'
        item[:version] = 'dstu2'
      elsif item.identifier.to_s.include? '/r4'
        item[:version] = 'r4'
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

  def add_button_attribute
    @items.each do |item|
      item[:header_button] = item.identifier.to_s.start_with?('/millennium', '/smart', '/authorization')
    end
  end
end
