class Product
  def initialize(name, *valores)
    @name = name
    @valores = valores.map(&:to_i)
  end
  def promedio
    @valores = @valores.inject(&:+) / @valores.length
  end
end

products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}
data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(ls[0], ls[1], ls[2], ls[3], ls[4])
end


puts products_list[0].promedio
