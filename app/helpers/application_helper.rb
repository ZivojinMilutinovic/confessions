module ApplicationHelper
  include Pagy::Frontend

  def format_categories(categories)
    str = ''
    categories.each do |category|
      str += category.name + ', '
    end
    return str.chomp(', ')
  end
end
