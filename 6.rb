class Product
  def initialize(name, *valores)
    @name = name
    @valores = valores.map(&:to_i)
  end
  def promedio
    @valores = @valores.inject(&:+) / @valores.length
  end
end

def catalogonuevo(catalogo)
  File.open( "nuevo_catalogo.txt", "w") do |f|
    catalogo.each do |prod|
      ls = prod.split(', ')
      ls.each_with_index do |dato, i|
        if i != (ls.size - 1)
           if i != (ls.size - 2)
             f.print "#{dato}, "
           else
             f.print "#{dato}\n"
           end
        end
      end
    end
    f.close
  end
end

products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}
data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(*ls)
end
#6
puts products_list[1].promedio

#7
catalogonuevo(data)
