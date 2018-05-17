class Product
  def initialize(name, *valores)
    @name = name
    @valores = valores.map(&:to_i)
  end

  def promedio
    @valores = @valores.inject(&:+) / @valores.length
  end

  def catalogonuevo
    print @valores
    File.open( "nuevo_catalogo.txt", "a") do |f|
      f.print "#{@name}, "
      @valores.each_with_index do |dato, i|
        if i != (@valores.size - 1)
            if i != (@valores.size - 2)
              f.print "#{dato}, "
            else
              f.print "#{dato}\n"
            end
        end
      end
      f.close
    end

  end
end

products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}
data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(ls[0], ls[1], ls[2], ls[3], ls[4])
end


products_list.map { |e|  e.catalogonuevo}
